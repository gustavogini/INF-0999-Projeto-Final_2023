   M S B A M L   `   `   `  ����C  ?Calender, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Calender.UserControlsCalender.UserControls  5           Calender.UserControls.Item   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5      /local#clr-namespace:Calender.UserControls  5      -   5        $
��item��5      .��5
      � -   5          �Name$  
grdLPTeste��5
      $��30 10q�6    � ColumnDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6   �� 5      $
��auto �6   .+�5   
   "  FontAwesome.WPF.ImageAwesome  $��20��6F   $��20��6Q   $	��Top=�6]      
Foreground �#f1f1f1$��0 3 0 0q�6�      Icon 6   ��  �� Path$
 Icon� �� ElementName$
 item��6�   �� 5   
   $��1��6   $
��10 0q�6%   .+�5      �� -   5         ��Name$ textBlockMessage��5      $��16(�62   ��6@   �� $ Color�$
 item����6s   �� $ Message�$
 item���� 5      -   5         ��Name$ editMessageTextBox��5      $��16(�62   $y�	Collapsed=�6@   �� 5       �� Orientation$ 
Horizontal=�6   $��0 5 0 0q�62   .+�5        $��2��6"   $��12��6b   $��12��6m    62   �� $ IconBell�$
 item�� 6y   �� $ Color�$
 item���� 5      -   5        $ textBlockTime��5      $��12(�64   $��8 0 0 0q�6�   ��6B   �� $ Color�$
 item����6u   �� $
 Time�$
 item��6�   �� 5      -   5        $ editTimeTextBox��5      $��16(�63   $y�	Collapsed=�6A   5      5      �� 5   
   $ 
Horizontal=�6   $��0 5 0 0q�6.   $��2��6?   .+�5       �� -   5        	 ��Name$	 
editButton��5        
  button#��[  6*   $��1��6J   $��12(�6s   .��6�   Editar5"      �� 5#      -   5        $	 deleteButton��5#      #��[  6+   $��1��6K   $��12(�6w   .��6�   	Deletar5%      5&      5'      5(      