   M S B A M L   `   `   `  ����C  ?Calender, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:Calender.UserControlsCalender.UserControls  5   	       Calender.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2us#clr-namespace:Calender.UserControls     5   	   Acontrols,http://metro.mahapps.com/winfx/xaml/controls     5
   	   $��Trebuchet MS)�5   	     � WindowStartupLocation$  CenterScreen=�64    � WindowStyle$
 None=�6Y    � AllowsTransparency$
 True��5	   	   
������ $	��590��6<   $	��900��6I   .��5      � .+�5   
   �  � ColumnDefinitions 5      �� 5      $
��1.2* �6#   �� 5      $��* �6#   .+�5      ��  �� CornerRadius$ 	20 0 0 20��6   ���#FEFEFE6.   �� 5      -   5        $ 	0 20 20 0��5      $��1��6K   ���#00BFFF6[   5      � 5   
    5      �� 5      $
��1.2* �6#   �� 5      $��* �6#   .+�5!      �� .+�5"      &   System.Windows.Controls.Calendar  -   5          Name$ 
myCalendar��5"       #  CalendarCalendarDayButtonStyle1   CalendarDayButtonStyle# �   6/     CalendarStyle1#���  6z      SelectionMode$ 
SingleDate=�6�   6�   5#      �� 5%      $��1��6   .+�5'      �� $��30 45 30 10q�6    �� Orientation$ 
Horizontal=�62   .+�5(      �� -   5        	 ��Name$	 selectedDayTextBlock��5(       $��50(�6>   ���#FFFFFF6L   �� 5*      $��1��6!   $��10 0 0 0q�61   $��Center=�6C   .+�5+      �� -   5        $	 monthTextBlock��5+   $   ���#FFFFFF$��24(�6Q   �� 5,      -   5        $	 dayOfWeekTextBlock��5,   $   ���#FFFFFF$��14(�6U   5-      5.      �� 51      ���#CD5278$ 10��6.   $��Center=�6@   $	��355��6]   $��	0 30 0 20q�6i   
 �� Padding$
 
17 15 5 15q�6|   ._�52      �  53      �� 54      $��* �6/   �� 55      $
��auto �6/   .+�58      �� .+�59      �  5:   "   �� 5;   &   $
��auto �67   �� 5<   &   $��* �67   .+�5?   "   "  FontAwesome.WPF.ImageAwesome     Icon$ Pencil=�62   $��15��6@   $��15��6K      
Foreground �#FFFFFF6W   �� 5@   "   -   5        $	 lblNote��5@   ,   $��Adicionar Lembrete��6[     textHint#��[ 6u   �� 5A   "   -   5        $��
txtMessage��5A   *     textBox#��[ 6^   5B      �� 5D      $��	0 12 0 11q�6(   ���#C14269$	��0.8��6P   � 5F       5G   "   �� 5H   &   $
��auto �67   �� 5I   &   $��* �67   .+�5L   "     $
 Bell=�62   $��15��6>   $��15��6I    �#FFFFFF6U   �� 5M   "   -   5        $	 lblTime��5M   ,   $��
_ _ : _ _ ��6[   #��[ 6m   �� 5N   "   -	   5        $��txtTime��5N   *   #��[ 6[   5O      5Q      �� 5S      -
   5         
 button#��[ 5S   !   $��1��6A   .��5T        $ 
PlusCircle=�6.   $��28��6@   $��28��6K    �#f9f9f96W   5U      5W      5X      � 5[      .+�5\      �� -   5        $��reminderItemsControl��5\   #   ��6?   �� *	Reminders+��5]      �� 5^      .R�5_   "       Calender.UserControls.Item  	   Id 6*   �� *Id+   Message 6<   �� *	Message+5`      5b      5c      5d      5e      5f      5g      