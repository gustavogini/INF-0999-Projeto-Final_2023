   M S B A M L   `   `   `  ����   Calender    Calender.App   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Z VFontAwesome.WPF, Version=4.7.0.37774, Culture=neutral, PublicKeyToken=0758b07a11a4f466-fa$http://schemas.fontawesome.io/icons/    �� 	Resources   
  button �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value 	 angle"  FontAwesome.WPF.ImageAwesome �� Path	 �� RelativeSource
 �� AncestorType  	buttonBig �� BasedOn  angleBig  buttonMonth  textHint  textBox  CalendarStyle1&   System.Windows.Controls.Calendar ��Name5  /System.Windows.Controls.Primitives.CalendarItem  Name   CalendarItemStyle  CalendarCalendarItemStyle1 � 	Resources �Name � 	Resources 	 Key �� Color'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� Duration �� 
TargetName �� TargetProperty	 W� To �� CornerRadius ��Name � RowDefinitions � ColumnDefinitions ��Name 
 DisabledColor J� Opacity  �� RadiusX! �� RadiusY" �� Stretch# �� Triggers$ �� 
TargetName% �� Value& �� Binding # CalendarCalendarDayButtonStyle1:  4System.Windows.Controls.Primitives.CalendarDayButton'   Transitions%  System.Windows.VisualTransition(   GeneratedDuration	) �� To* R� KeyTime+ R� Value	  System.Windows.Visibility, ��Name- F�Name. J� RenderTransformOrigin/ J� IsHitTestVisible��%8  &	        &	 Z    &	 �    7   &	 -    &	 �    7   &	 �    &	 �    &	 X    &	 ,    7 
 7 
 &	 l    �� " ��.���  � ��
 ���� ��  � ��
 �������  � ��$ 22(���  � ��$
 12 0q���  � ��$ Center=���  � �� �� " ��.R��� $��0q�._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ���  � ��
 �   �P�  �@J�IsMouseCaptured$
 True��. ���  � �� �#ffff�� "  .���  �@ 
Foreground �� $ 
Foreground�	 �� *FindAncestor+"
 ����  � ��$ 13����  � ��$ 13����  � ��$ 0 3 0 0q��� " ��8   .���  � �� �#EBA5BB�� "  .���  �@ 
Foreground �� $ 
Foreground�	 �� *FindAncestor+"
 ����  � ��$ 25����  � ��$ 25���� " ��8   .���  � ��$ 18(��� " ��.���  � ��$ 14(���  � ��$ 1����  �@K�ZIndex$ 1����  � ��$ 10 0 0 0q���  � �� �#FFFFFF��  � ��$ Center=��� " ��.���  � �� �#CD5278��  � �� �#FFFFFF��  � ��$ 14(���  � ��$ 1����  � ��$ 10 0 0 0q���  � ��
 ���� ��  � ��$ 0q���  � ��$ Center=��� "  .���  � �� �	#FF333333��  � ��
 ���� ��  � ��$ 0q���  � �� �� "  .R��� $ 	PART_Root��$��Center=�.+�  $ PART_CalendarItem��#��z��#��z��#��z��#��z �� "  .���  � ��$ 0,3,0,3q���  � �� �� "   ���� (��       **(CalendarItem.DayTitleTemplateResourceKey+).R��� $��SemiBold"�$��Trebuchet MS)����	#FF333333$��18(�$��Center=�$��10q�$��Center=����� .R�� $ 	PART_Root�� ���� DisabledColor	 $ 	#A5FFFFFF��   CommonStates��.   
Normal��  Disabled��. �� .��W� $ 0D�$ PART_DisabledVisual��$ Opacity� 1.+��� #��z��#��z��#��z��$ 1��._��� ._�� .+��� $ PART_PreviousButton��$y�	Collapsed=��� $ PART_HeaderButton��$y�	Collapsed=��� $ PART_NextButton��$y�	Collapsed=�� $ PART_MonthView��$y�Visible=� �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �� $ PART_YearView��$y�Hidden=� �� $
��Auto ��� $
��Auto ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto ��� $ PART_DisabledVisual��8��  $ 0Q�$  2��$! 2��$��1��$
" Fill=�8�� $y�	Collapsed=�# P�  � {�$ False��. ��� $$ PART_DisabledVisual�� � y�$ Visible=��� $
% Year��& �� *DisplayMode+	 �� *FindAncestor+"
  .a��� $$ PART_MonthView�� � y�$ Hidden=��� $$ PART_YearView�� � y�$ Visible=��� $% Decade��& �� *DisplayMode+	 �� *FindAncestor+"
  .a��� $$ PART_MonthView�� � y�$ Hidden=��� $$ PART_YearView�� � y�$ Visible=��� "  .���  � ��$ 50����  � ��$ 30����  � ��$ 18(���  � ��$ 5q���  �@�Cursor$
 Hand����  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��    CommonStates��'   $( 0:0:0.1D�.   
Normal��  	MouseOver��. �� .��W� $ 0D�$ HighlightBackground��$ Opacity� 0.5  Pressed��. �� .��W� $ 0D�$ HighlightBackground��$ Opacity� 0.5  Disabled��. �� .��W� $ 0D�$ HighlightBackground��$ Opacity� 0W� $ 0D�$ 
NormalText��$ Opacity� .35  SelectionStates��'   $( 0D�.   
Unselected��  Selected��. �� .��W� $ 0D�$ SelectedBackground��$ Opacity� .9�� $ 0D�$ 
NormalText��$6 0(TextElement.Foreground).(SolidColorBrush.Color)�) #FFFFFF  CalendarButtonFocusStates��'   $( 0D�.   CalendarButtonFocused��. �� .��T� $ 0D�$ DayButtonFocusVisual��$ 
Visibility�..�i� $* 0��+ 	 Visible=�  CalendarButtonUnfocused��. �� .��T� $ 0D�$ DayButtonFocusVisual��$ 
Visibility�..�i� $* 0��+ 	 	Collapsed=�  ActiveStates��'   $( 0D�.   
Active��  Inactive��. �� .���� $ 0D�$ 
NormalText��$6 0(TextElement.Foreground).(SolidColorBrush.Color)�) #BABABA  	DayStates��'   $( 0D�.   
RegularDay��  	Today��. �� .��W� $ 0D�$ TodayBackground��$ Opacity� 1�� $ 0D�$ 
NormalText��$6 0(TextElement.Foreground).(SolidColorBrush.Color)�) 	#FFFFFFFF  BlackoutDayStates��'   $( 0D�.   	NormalDay��  BlackoutDay��. �� .��W� $ 0D�$ Blackout��$ Opacity� .2.+��� $ TodayBackground�����#00BFFF$ 0Q�$  0��$! 30���� $ SelectedBackground�����#00BFFF$ 0Q�$  30��$! 30���� #��z��#��z��#��z���� $ HighlightBackground�����#c1c1c1$ 0Q�$  30��$! 30���� $, 
NormalText�����	#FF333333$��Center=�$	��5 3q�$��Center=�F� $- Blackout��}�����5 �Z @�J� �Q2� �J� �̉� iV� �A�� �J� �W�� �J� ѷ�� #�� �>8� 7T�K�� 7T�� � ��� ћ�� 7T����G @7T��� �D� 	���	#FF000000$��Stretch=�$��3q�$ 0Q�$. 0.5,0.5&�$
" Fill=�$��Stretch=��� $ DayButtonFocusVisual��$/ false��$  30��$! 30��
������ $y�	Collapsed=�