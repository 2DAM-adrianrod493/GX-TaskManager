﻿using G4_EmployeeRegister.Models;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;

namespace G4_EmployeeRegister.Services
{
    internal class LoginService
    {
        // CREAMOS LA CADENA DE CONEXIÓN A PARTIR DE APP.CONFIG
        private string connectionString = ConfigurationManager.ConnectionStrings["Conexion_App"].ConnectionString;
        public UsuarioModel GetUsuarioLogin(string nombreUsuario, string passIntro)
        {
            UsuarioModel usuario = null;
            try
            {
                using (SqlConnection conexion = new SqlConnection(connectionString))
                {
                    conexion.Open();
                    string query = @"SELECT u.IdUsuario, u.Nombre, u.Apellidos, u.Email, u.Username, u.Contrasenia, u.Foto, u.Rol, u.Departamento 
                                     FROM Usuarios u
                                     WHERE Username = @userName";
                    using (SqlCommand cmd = new SqlCommand(query, conexion))
                    {
                        cmd.Parameters.AddWithValue("@userName", nombreUsuario);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string passHash = reader["Contrasenia"].ToString();
                                if (BCrypt.Net.BCrypt.Verify(passIntro, passHash))

                                {
                                    int idUsuario = Convert.ToInt32(reader["IdUsuario"]);
                                    string nombre = reader["Nombre"].ToString();
                                    string apellidos = reader["Apellidos"].ToString();
                                    string email = reader["Email"].ToString();
                                    string username = reader["Username"].ToString();
                                    string contrasenia = passHash;
                                    string rol = reader["Rol"].ToString();
                                    string departamento = reader["Departamento"].ToString();
                                    BitmapImage foto = new BitmapImage();
                                    //Manejo de la imagen
                                    if (!reader["Foto"].ToString().Equals(""))
                                    {
                                        // Convertir el resultado a un array de bytes
                                        byte[] imagenBytes = (byte[])reader["Foto"];
                                        // Utilizar un MemoryStream para leer los bytes de la imagen
                                        using (MemoryStream ms = new MemoryStream(imagenBytes))
                                        {
                                            foto.BeginInit();
                                            foto.CacheOption = BitmapCacheOption.OnLoad; // Cargar la imagen completamente en memoria
                                            foto.StreamSource = ms; // Asignar el MemoryStream como fuente de la imagen
                                            foto.EndInit();
                                        }
                                    }
                                    else
                                    {
                                        foto = null;
                                    }
                                    

                                    usuario = new UsuarioModel(idUsuario, nombre, apellidos, email, 
                                        username, contrasenia, foto, rol, departamento);
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al obtener el usuario: " + ex.Message);
            }
            return usuario;
        }
    }
}
