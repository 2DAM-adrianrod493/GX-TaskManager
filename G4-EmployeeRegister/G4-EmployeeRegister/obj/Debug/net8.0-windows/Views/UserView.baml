   M S B A M L   `   `   `  ����N  JG4-EmployeeRegister, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:G4_EmployeeRegister.ViewsG4_EmployeeRegister.Views  5      S.clr-namespace:G4_EmployeeRegister.UserControls G4_EmployeeRegister.UserControls  5      (    "G4_EmployeeRegister.Views.UserView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:G4_EmployeeRegister.Views     5      =uc.clr-namespace:G4_EmployeeRegister.UserControls     5        � Title$  UserView��5	      $	��600��6   $	��800��6%    � 
ResizeMode$ NoResize=�5
      ��5      �� 5   
    �� ImageSource$# ../Resources/Fondos/fondo.jpg��6    j� Stretch$
 Fill=�6A    �� Opacity$	 0.5Q�6P   .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��* �6   �� 5      $��6* �6   .+�5   
   � $��0��6   $��0��6   $��Center=�6,    5      �� 5      $��* �6     � ColumnDefinitions 5      �� 5      $��4* �6#   �� 5       $��* �6#   .+�5&      �� -   5         ��Name$ 
BotonSalir��5&      $��2��5'      $��Center=�5(      
������ $��0q�5*      .��5,      �� $!��/Resources/Iconos/salir.png��6   $��38��5-         EstiloImagen#��[  5.      5/      51      �� 52   
   $#��Adrián Rodríguez Rodríguez��6   $��1��53      $��1��54      $��Center=�55      $��Center=�56        EstiloTextoTitulo#��[ 57      � 5:   
   $��2��6    5;      �� 5<      $��* �6#   �� 5=      $��6* �6#   �� 5>      $��* �6#   �� 5?      $��6* �6#   �� 5@      $��* �6#   .+�5C      �� $��Iniciar Jornada��6     EstilosButton#��[ 5D      $��1��5E      $
��Auto��5G      $��	15,0,10,0q�5H      ��5F      �� *IniciarJornadaCommand+5H      �� 5J      $��Finalizar Jornada��6   #��[ 5K      $��3��5L      $
��Auto��5N      $��	10,0,15,0q�5O      ��5M      �� *FinalizarJornadaCommand+5O      5P      �� 5S   
   $��3��6   $��0,20,0,0q�6"   .+�5T      � $��3��6   $
��Auto��6    $��0,10,0,0q�6-   .+�5U      �� $
��Auto=�6   $��Disabled=�5V      .��5W      �� $��2��6!   .+�5X      &   System.Windows.Controls.DataGrid  -   5          Name$ HistorialFichaje��5X   #   	   AutoGenerateColumns$	 False��5Y   #   $��Stretch=�5Z   #   $��Stretch=�5[   #   
   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$
 * 5\   #      
IsReadOnly$
 True��5]   #      CanUserAddRows$ False��5_   #      CanUserDeleteRows$ False��5`   #     EstilosDataGrid#��[ 5a   #   ��5^   #   �� *
Fichajes+   Columns 5c      0  *System.Windows.Controls.DataGridTextColumn  5d   "   ,  &System.Windows.Controls.DataGridColumn   Header$ 	IdFichaje��65   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6H   �� *	IdFichaje+  5e   "   $ 	IdUsuario��65    6H   �� *	IdUsuario+  5f   "   $ 	FechaHora��65    6H   �� *	FechaHora+  5g   "   $
 Tipo��65    6C   �� *Tipo+  5h   "   $ Observaciones��65    6L   �� *Observaciones+5k      5l      5m      5n      5o      5q      5r      