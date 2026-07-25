Add-Type -AssemblyName PresentationFramework

# ===== ตั้ง License Key =====
$ValidKey = "firstx888."

# ===== XAML =====
[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        Title="FIRSTX License"
        Height="150"
        Width="350"
        WindowStartupLocation="CenterScreen"
        ResizeMode="NoResize"
        Background="#1A1A1A">

    <Grid Margin="20">

        <StackPanel>

            <TextBlock Text="🔐 FIRSTX LICENSE"
                       Foreground="White"
                       FontSize="10"
                       FontWeight="Bold"
                       HorizontalAlignment="Center"
                       Margin="0,0,0,20"/>

            <PasswordBox Name="txtLicense"
                         Height="20"
                         FontSize="10"
                         Margin="0,0,0,15"/>

            <Button Name="btnVerify"
                    Content="Verify License"
                    Height="0"
                    Width="0"
                    HorizontalAlignment="Center"/>

        </StackPanel>

    </Grid>
</Window>
"@

# โหลด XAML
$reader = New-Object System.Xml.XmlNodeReader $xaml
$Window = [Windows.Markup.XamlReader]::Load($reader)

$txtLicense = $Window.FindName("txtLicense")
$btnVerify  = $Window.FindName("btnVerify")

# ฟังก์ชันตรวจสอบ License
$Verify = {

    if($txtLicense.Password -eq $ValidKey)
    {
        [System.Windows.MessageBox]::Show(
            "License Verified!",
            "FIRSTX"
        )

        $Window.DialogResult = $true
        $Window.Close()
    }
    else
    {
        [System.Windows.MessageBox]::Show(
            "Invalid License Key!",
            "FIRSTX"
        )

        $txtLicense.Clear()
        $txtLicense.Focus()
    }

}

# ปุ่ม Verify
$btnVerify.Add_Click($Verify)

# กด Enter ได้
$txtLicense.Add_KeyDown({
    if($_.Key -eq 'Return')
    {
        & $Verify
    }
})

# แสดงหน้าต่าง
$result = $Window.ShowDialog()

# ถ้าผ่าน License แล้วจึงรันโปรแกรมหลัก
if($result -eq $true)
{
    Write-Host "Program Started..." -ForegroundColor Green

    # ==========================
    # วางโค้ด FIRSTX ของคุณตรงนี้
    # ==========================

    # เช่น
    # Show-MainWindow
}
else
{
    exit
}
# Auto-Elevate to Administrator
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    $scriptPath = if ($PSCommandPath) { $PSCommandPath } else { $MyInvocation.MyCommand.Path }
    if ($scriptPath) {
        try { Start-Process powershell.exe -ArgumentList "-ExecutionPolicy Bypass -WindowStyle Hidden -File `"$scriptPath`"" -Verb RunAs } catch {}
    }
    Exit
}

# Hide PowerShell Console Window
$code = @"
using System;
using System.Runtime.InteropServices;
public class Win32 {
    [DllImport("kernel32.dll")]
    public static extern IntPtr GetConsoleWindow();
    [DllImport("user32.dll")]
    public static extern bool ShowWindow(IntPtr hWnd, int nCmdShow);
}
"@
Add-Type -TypeDefinition $code
[Win32]::ShowWindow([Win32]::GetConsoleWindow(), 0)

Add-Type -AssemblyName PresentationFramework

[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="lnwzamak Firstx" Height="740" Width="1150"
        WindowStyle="None" AllowsTransparency="True" Background="Transparent"
        WindowStartupLocation="CenterScreen">
    
    <Window.Resources>
        <LinearGradientBrush x:Key="AccentGradient" StartPoint="0,0" EndPoint="1,1">
            <GradientStop Color="#FFD700" Offset="0.0"/>
            <GradientStop Color="#B8860B" Offset="1.0"/>
        </LinearGradientBrush>
        <LinearGradientBrush x:Key="CardGradient" StartPoint="0,0" EndPoint="0,1">
            <GradientStop Color="#141414" Offset="0.0"/>
            <GradientStop Color="#0D0D0D" Offset="1.0"/>
        </LinearGradientBrush>
        
        <Style TargetType="Button" x:Key="PremiumButton">
            <Setter Property="Background" Value="{StaticResource AccentGradient}"/>
            <Setter Property="Foreground" Value="White"/>
            <Setter Property="FontWeight" Value="SemiBold"/>
            <Setter Property="FontSize" Value="14"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border Background="{TemplateBinding Background}" CornerRadius="10" BorderThickness="1" BorderBrush="#FFE866">
                            <Border.Effect>
                                <DropShadowEffect BlurRadius="12" ShadowDepth="4" Opacity="0.4" Color="#DAA520"/>
                            </Border.Effect>
                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center" Margin="10,0"/>
                        </Border>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
            <Style.Triggers>
                <Trigger Property="IsMouseOver" Value="True">
                    <Setter Property="Opacity" Value="0.9"/>
                </Trigger>
                <Trigger Property="IsPressed" Value="True">
                    <Setter Property="Opacity" Value="0.7"/>
                </Trigger>
            </Style.Triggers>
        </Style>

        <Style TargetType="Button" x:Key="SecondaryButton">
            <Setter Property="Background">
                <Setter.Value>
                    <LinearGradientBrush StartPoint="0,0" EndPoint="0,1">
                        <GradientStop Color="#121212" Offset="0"/>
                        <GradientStop Color="#080808" Offset="1"/>
                    </LinearGradientBrush>
                </Setter.Value>
            </Setter>
            <Setter Property="Foreground" Value="#eee"/>
            <Setter Property="FontWeight" Value="SemiBold"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border Background="{TemplateBinding Background}" BorderBrush="#2A2A2A" BorderThickness="1" CornerRadius="10">
                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center" Margin="10,0"/>
                        </Border>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
            <Style.Triggers>
                <Trigger Property="IsMouseOver" Value="True">
                    <Setter Property="Background">
                        <Setter.Value>
                            <LinearGradientBrush StartPoint="0,0" EndPoint="0,1">
                                <GradientStop Color="#1C1C1C" Offset="0"/>
                                <GradientStop Color="#171717" Offset="1"/>
                            </LinearGradientBrush>
                        </Setter.Value>
                    </Setter>
                    <Setter Property="BorderBrush" Value="#FFD700"/>
                </Trigger>
                <Trigger Property="IsPressed" Value="True">
                    <Setter Property="Opacity" Value="0.7"/>
                </Trigger>
            </Style.Triggers>
        </Style>

        <Style TargetType="Button" x:Key="MenuButton">
            <Setter Property="Background" Value="Transparent"/>
            <Setter Property="Foreground" Value="#a08b96"/>
            <Setter Property="Height" Value="48"/>
            <Setter Property="FontSize" Value="14"/>
            <Setter Property="FontWeight" Value="Medium"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border Background="{TemplateBinding Background}" CornerRadius="6" Margin="10,2">
                            <ContentPresenter HorizontalAlignment="Left" VerticalAlignment="Center" Margin="20,0,0,0"/>
                        </Border>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
            <Style.Triggers>
                <Trigger Property="IsMouseOver" Value="True">
                    <Setter Property="Background" Value="#101010"/>
                    <Setter Property="Foreground" Value="White"/>
                </Trigger>
            </Style.Triggers>
        </Style>

        <Style TargetType="Button" x:Key="ActiveMenuButton" BasedOn="{StaticResource MenuButton}">
            <Setter Property="Background" Value="#141414"/>
            <Setter Property="Foreground" Value="White"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border Background="{TemplateBinding Background}" CornerRadius="6" Margin="10,2">
                            <Grid>
                                <Rectangle Width="4" Height="24" Fill="{StaticResource AccentGradient}" HorizontalAlignment="Left" RadiusX="2" RadiusY="2" Margin="0"/>
                                <ContentPresenter HorizontalAlignment="Left" VerticalAlignment="Center" Margin="20,0,0,0"/>
                            </Grid>
                        </Border>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>

        <Style TargetType="Button" x:Key="WindowControlButton">
            <Setter Property="Background" Value="Transparent"/>
            <Setter Property="Foreground" Value="#947488"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border Background="{TemplateBinding Background}">
                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                        </Border>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
            <Style.Triggers>
                <Trigger Property="IsMouseOver" Value="True">
                    <Setter Property="Background" Value="#2A2A2A"/>
                    <Setter Property="Foreground" Value="White"/>
                </Trigger>
            </Style.Triggers>
        </Style>
        <Style TargetType="Button" x:Key="CloseButton" BasedOn="{StaticResource WindowControlButton}">
            <Style.Triggers>
                <Trigger Property="IsMouseOver" Value="True">
                    <Setter Property="Background" Value="#e60012"/>
                    <Setter Property="Foreground" Value="White"/>
                </Trigger>
            </Style.Triggers>
        </Style>
    </Window.Resources>

    <Window.Triggers>
        <EventTrigger RoutedEvent="Window.Loaded">
            <BeginStoryboard>
                <Storyboard>
                    <DoubleAnimation Storyboard.TargetProperty="Opacity" From="0.0" To="1.0" Duration="0:0:0.6"/>
                </Storyboard>
            </BeginStoryboard>
        </EventTrigger>
    </Window.Triggers>

    <Border CornerRadius="12" BorderThickness="1" BorderBrush="#1C1C1C">
        <Border.Background>
            <LinearGradientBrush StartPoint="0,0" EndPoint="1,1">
                <GradientStop Color="#050505" Offset="0"/>
                <GradientStop Color="#0A0A0A" Offset="1"/>
            </LinearGradientBrush>
        </Border.Background>
        <Border.Effect>
            <DropShadowEffect BlurRadius="25" ShadowDepth="0" Opacity="0.5" Color="Black"/>
        </Border.Effect>
        <Grid>
            <Grid.RowDefinitions>
                <RowDefinition Height="40"/>
                <RowDefinition Height="*"/>
            </Grid.RowDefinitions>
            
            <Grid Grid.Row="0" Background="Transparent" x:Name="TitleBar">
                <StackPanel Orientation="Horizontal" VerticalAlignment="Center" Margin="20,0,0,0">
                    <Ellipse Width="8" Height="8" Fill="{StaticResource AccentGradient}"/>
                    <TextBlock Text="lnwzamak Firstx" Foreground="#ddd" FontWeight="SemiBold" Margin="12,0,0,0" FontSize="12" FontFamily="Segoe UI"/>
                </StackPanel>
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" VerticalAlignment="Stretch">
                    <Button Content="—" Width="50" Style="{StaticResource WindowControlButton}" FontSize="12" x:Name="BtnMinimize"/>
                    <Button Content="✕" Width="50" Style="{StaticResource CloseButton}" FontSize="12" x:Name="BtnClose"/>
                </StackPanel>
            </Grid>

            <Grid Grid.Row="1">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="260"/>
                    <ColumnDefinition Width="*"/>
                </Grid.ColumnDefinitions>

                <Border Grid.Column="0" Background="#050505" BorderThickness="0,0,1,0" BorderBrush="#141414" CornerRadius="0,0,0,12">
                    <Grid>
                        <Grid.RowDefinitions>
                            <RowDefinition Height="Auto"/>
                            <RowDefinition Height="*"/>
                            <RowDefinition Height="Auto"/>
                        </Grid.RowDefinitions>
                        
                        <StackPanel Grid.Row="0">
                            <Ellipse x:Name="ProfileImage" Width="95" Height="95" Fill="#141414" Margin="0,35,0,15">
                                <Ellipse.Stroke>
                                    <LinearGradientBrush StartPoint="0,0" EndPoint="1,1">
                                        <GradientStop Color="#FFD700" Offset="0"/>
                                        <GradientStop Color="#8B6508" Offset="1"/>
                                    </LinearGradientBrush>
                                </Ellipse.Stroke>
                                <Ellipse.StrokeThickness>2</Ellipse.StrokeThickness>
                                <Ellipse.Effect>
                                    <DropShadowEffect BlurRadius="15" ShadowDepth="4" Opacity="0.3" Color="Black"/>
                                </Ellipse.Effect>
                            </Ellipse>
                            <TextBlock Text="lnwzamak Firstx" Foreground="White" FontWeight="Bold" FontSize="19" HorizontalAlignment="Center"/>
                            <TextBlock Text="PREMIUM OPTIMIZER" Foreground="#FFD700" FontSize="11" FontWeight="Bold" HorizontalAlignment="Center" Margin="0,6,0,35"/>
                        </StackPanel>

                        <StackPanel Grid.Row="1" Margin="0,0,0,0">
                            <Button x:Name="BtnNavDashboard" Style="{StaticResource ActiveMenuButton}">
                                <StackPanel Orientation="Horizontal">
                                    <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE80F;" FontSize="16" Width="40" VerticalAlignment="Center" Margin="0,-2,0,0"/>
                                    <TextBlock Text="Dashboard" VerticalAlignment="Center"/>
                                </StackPanel>
                            </Button>
                            <Button x:Name="BtnNavCPU" Style="{StaticResource MenuButton}">
                                <StackPanel Orientation="Horizontal">
                                    <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE945;" FontSize="16" Width="40" VerticalAlignment="Center" Margin="0,-2,0,0"/>
                                    <TextBlock Text="CPU / Priority" VerticalAlignment="Center"/>
                                </StackPanel>
                            </Button>
                            <Button x:Name="BtnNavInput" Style="{StaticResource MenuButton}">
                                <StackPanel Orientation="Horizontal">
                                    <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE962;" FontSize="16" Width="40" VerticalAlignment="Center" Margin="0,-2,0,0"/>
                                    <TextBlock Text="Input" VerticalAlignment="Center"/>
                                </StackPanel>
                            </Button>
                            <Button x:Name="BtnNavNetwork" Style="{StaticResource MenuButton}">
                                <StackPanel Orientation="Horizontal">
                                    <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE774;" FontSize="16" Width="40" VerticalAlignment="Center" Margin="0,-2,0,0"/>
                                    <TextBlock Text="Network" VerticalAlignment="Center"/>
                                </StackPanel>
                            </Button>
                            <Button x:Name="BtnNavPower" Style="{StaticResource MenuButton}">
                                <StackPanel Orientation="Horizontal">
                                    <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE850;" FontSize="16" Width="40" VerticalAlignment="Center" Margin="0,-2,0,0"/>
                                    <TextBlock Text="Power / Timer" VerticalAlignment="Center"/>
                                </StackPanel>
                            </Button>
                                                        <Button x:Name="BtnNavRestore" Style="{StaticResource MenuButton}">
                                <StackPanel Orientation="Horizontal">
                                    <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE72C;" FontSize="16" Width="40" VerticalAlignment="Center" Margin="0,-2,0,0"/>
                                    <TextBlock Text="Restore" VerticalAlignment="Center"/>
                                </StackPanel>
                            </Button>
                        </StackPanel>
                        
                        <Border x:Name="SidebarImage" Grid.Row="2" Height="140" Background="#0A0A0A" Margin="20,20,20,25" CornerRadius="10" BorderThickness="1" BorderBrush="#1A1A1A">
                            <TextBlock x:Name="SidebarPlaceholderText" Text="[Image Placeholder]" Foreground="#444" HorizontalAlignment="Center" VerticalAlignment="Center"/>
                        </Border>
                    </Grid>
                </Border>

                <!-- VIEWS CONTAINER -->
                <Grid Grid.Column="1" Margin="45,35,45,35">
                    <Grid.RowDefinitions>
                        <RowDefinition Height="*"/>
                        <RowDefinition Height="Auto"/>
                    </Grid.RowDefinitions>

                    <Grid Grid.Row="0">
                        <!-- VIEW 1: DASHBOARD -->
                        <Grid x:Name="ViewDashboard" Visibility="Visible">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>

                            <StackPanel Grid.Row="0" Margin="0,0,0,20">
                                <TextBlock Text="Dashboard" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="ภาพรวมระบบ และการตั้งค่าด่วน" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>

                            <Border x:Name="BannerImage" Grid.Row="1" Height="140" CornerRadius="12" Margin="0,0,0,20" BorderThickness="1" BorderBrush="#1C1C1C">
                                <Border.Background>
                                    <LinearGradientBrush StartPoint="0,0" EndPoint="1,1">
                                        <GradientStop Color="#171717" Offset="0.0"/>
                                        <GradientStop Color="#0d0309" Offset="1.0"/>
                                    </LinearGradientBrush>
                                </Border.Background>
                                <Border.Effect>
                                    <DropShadowEffect BlurRadius="20" ShadowDepth="8" Opacity="0.3" Color="Black"/>
                                </Border.Effect>
                                <Grid>
                                    <StackPanel VerticalAlignment="Center" Margin="45,0">
                                        <TextBlock Text="lnwzamak Firstx" Foreground="White" FontSize="44" FontWeight="Black"/>
                                        <TextBlock Text="FIVEM PERFORMANCE TOOLBOX | GOLD EDITION" Foreground="#FFD700" FontSize="13" Margin="0,8,0,0" FontWeight="Bold"/>
                                    </StackPanel>
                                </Grid>
                            </Border>

                            <Grid Grid.Row="2">
                                <Grid.RowDefinitions>
                                    <RowDefinition Height="Auto"/>
                                    <RowDefinition Height="Auto"/>
                                </Grid.RowDefinitions>
                                <Grid.ColumnDefinitions>
                                    <ColumnDefinition Width="*"/>
                                    <ColumnDefinition Width="*"/>
                                </Grid.ColumnDefinitions>

                                <!-- SYSTEM -->
                                <Border Grid.Row="0" Grid.Column="0" Background="{StaticResource CardGradient}" CornerRadius="12" Margin="0,0,15,15" Padding="25" BorderThickness="1" BorderBrush="#1C1C1C">
                                    <Border.Effect>
                                        <DropShadowEffect BlurRadius="15" ShadowDepth="5" Opacity="0.25" Color="Black"/>
                                    </Border.Effect>
                                    <StackPanel>
                                        <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                            <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                            <TextBlock Text="SYSTEM" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                        </StackPanel>
                                        <TextBlock x:Name="SysOs" Text="OS: Loading..." Foreground="#A3A3A3" Margin="0,4" FontSize="14"/>
                                        <TextBlock x:Name="SysCpu" Text="CPU: Loading..." Foreground="#A3A3A3" Margin="0,4" FontSize="14"/>
                                        <TextBlock x:Name="SysRam" Text="RAM: Loading..." Foreground="#A3A3A3" Margin="0,4" FontSize="14"/>
                                        <TextBlock x:Name="SysHwid" Text="HWID: Loading..." Foreground="#A3A3A3" Margin="0,4" FontSize="14"/>
                                    </StackPanel>
                                </Border>

                                <!-- QUICK APPLY -->
                                <Border Grid.Row="0" Grid.Column="1" Background="{StaticResource CardGradient}" CornerRadius="12" Margin="15,0,0,15" Padding="25" BorderThickness="1" BorderBrush="#1C1C1C">
                                    <Border.Effect>
                                        <DropShadowEffect BlurRadius="15" ShadowDepth="5" Opacity="0.25" Color="Black"/>
                                    </Border.Effect>
                                    <StackPanel>
                                        <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                            <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                            <TextBlock Text="QUICK APPLY" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                        </StackPanel>
                                        <TextBlock Text="กดปุ่มเดียว: CPU 0x2A + QoS FiveM + Timer ON" Foreground="#A3A3A3" Margin="0,0,0,20" FontSize="14"/>
                                        <Button x:Name="BtnApplyRec" Style="{StaticResource PremiumButton}" Height="45">
                                            <StackPanel Orientation="Horizontal">
                                                <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE93E;" FontSize="16" Margin="0,0,8,0" VerticalAlignment="Center"/>
                                                <TextBlock x:Name="TxtApplyRec" Text="APPLY RECOMMENDED" VerticalAlignment="Center" FontWeight="Bold"/>
                                            </StackPanel>
                                        </Button>
                                    </StackPanel>
                                </Border>

                                <!-- STATUS -->
                                <Border Grid.Row="1" Grid.ColumnSpan="2" Background="{StaticResource CardGradient}" CornerRadius="12" Margin="0,0,0,15" Padding="25" BorderThickness="1" BorderBrush="#1C1C1C">
                                    <Border.Effect>
                                        <DropShadowEffect BlurRadius="15" ShadowDepth="5" Opacity="0.25" Color="Black"/>
                                    </Border.Effect>
                                    <Grid>
                                        <Grid.ColumnDefinitions>
                                            <ColumnDefinition Width="*"/>
                                            <ColumnDefinition Width="Auto"/>
                                        </Grid.ColumnDefinitions>
                                        <StackPanel Grid.Column="0">
                                            <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                                <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                                <TextBlock Text="STATUS" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                            </StackPanel>
                                            <WrapPanel>
                                                <TextBlock x:Name="StatusPriority" Text="Win32PrioritySeparation: Unknown" Foreground="#A3A3A3" Margin="0,0,35,8" FontSize="14"/>
                                                <TextBlock x:Name="StatusQos" Text="QoS FiveM: Unknown" Foreground="#A3A3A3" Margin="0,0,35,8" FontSize="14"/>
                                                <TextBlock x:Name="StatusTimer" Text="Timer Service: Unknown" Foreground="#A3A3A3" Margin="0,0,35,8" FontSize="14"/>
                                                <TextBlock x:Name="StatusPlan" Text="Power Plan: Unknown" Foreground="#A3A3A3" Margin="0,0,35,8" FontSize="14"/>
                                            </WrapPanel>
                                        </StackPanel>
                                        <Button x:Name="BtnRefreshStatus" Grid.Column="1" Style="{StaticResource SecondaryButton}" Width="130" Height="42" VerticalAlignment="Center" Margin="15,0,0,0">
                                            <StackPanel Orientation="Horizontal">
                                                <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE72C;" FontSize="14" Margin="0,0,8,0" VerticalAlignment="Center"/>
                                                <TextBlock Text="REFRESH" VerticalAlignment="Center" FontWeight="Bold"/>
                                            </StackPanel>
                                        </Button>
                                    </Grid>
                                </Border>
                            </Grid>
                        </Grid>
                        
                        <!-- VIEW 2: CPU / PRIORITY -->
                        <Grid x:Name="ViewCPU" Visibility="Collapsed">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>
                            <StackPanel Grid.Row="0" Margin="0,0,0,25">
                                <TextBlock Text="CPU / Priority" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="ปรับแต่งการทำงานของหน่วยประมวลผลและการจัดลำดับความสำคัญ" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>
                            
                            <ScrollViewer Grid.Row="1" VerticalScrollBarVisibility="Auto">
                                <StackPanel>
                                    <Border Background="{StaticResource CardGradient}" CornerRadius="12" Margin="0,0,0,20" Padding="30" BorderThickness="1" BorderBrush="#1C1C1C">
                                        <StackPanel>
                                            <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                                <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                                <TextBlock Text="Win32 Priority Separation" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                            </StackPanel>
                                            <TextBlock Text="เลือกค่าที่เหมาะสมกับสเปคคอมพิวเตอร์ของคุณเพื่อประสิทธิภาพสูงสุดใน FiveM" Foreground="#A3A3A3" Margin="0,0,0,20"/>
                                            <UniformGrid Columns="3" Rows="2" HorizontalAlignment="Stretch">
                                                <Button x:Name="BtnCpu26" Style="{StaticResource SecondaryButton}" Height="65" Margin="6">
                                                    <StackPanel>
                                                        <TextBlock x:Name="TxtCpu26" Text="0x26" FontSize="17" FontWeight="Bold" HorizontalAlignment="Center" Foreground="White"/>
                                                        <TextBlock Text="สมดุล (Balanced)" FontSize="12" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,2,0,0"/>
                                                    </StackPanel>
                                                </Button>
                                                <Button x:Name="BtnCpu28" Style="{StaticResource PremiumButton}" Height="65" Margin="6">
                                                    <StackPanel>
                                                        <TextBlock x:Name="TxtCpu28" Text="0x28" FontSize="17" FontWeight="Bold" HorizontalAlignment="Center" Foreground="White"/>
                                                        <TextBlock Text="แนะนำ (Recommended)" FontSize="12" Foreground="#FFF7D6" HorizontalAlignment="Center" Margin="0,2,0,0"/>
                                                    </StackPanel>
                                                </Button>
                                                <Button x:Name="BtnCpu2A" Style="{StaticResource SecondaryButton}" Height="65" Margin="6">
                                                    <StackPanel>
                                                        <TextBlock x:Name="TxtCpu2A" Text="0x2A" FontSize="17" FontWeight="Bold" HorizontalAlignment="Center" Foreground="White"/>
                                                        <TextBlock Text="แรงสุด (Maximum)" FontSize="12" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,2,0,0"/>
                                                    </StackPanel>
                                                </Button>
                                                <Button x:Name="BtnCpu16" Style="{StaticResource SecondaryButton}" Height="65" Margin="6">
                                                    <StackPanel>
                                                        <TextBlock x:Name="TxtCpu16" Text="0x16" FontSize="17" FontWeight="Bold" HorizontalAlignment="Center" Foreground="White"/>
                                                        <TextBlock Text="สตรีมมิ่ง (Streaming)" FontSize="12" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,2,0,0"/>
                                                    </StackPanel>
                                                </Button>
                                                <Button x:Name="BtnCpu18" Style="{StaticResource SecondaryButton}" Height="65" Margin="6">
                                                    <StackPanel>
                                                        <TextBlock x:Name="TxtCpu18" Text="0x18" FontSize="17" FontWeight="Bold" HorizontalAlignment="Center" Foreground="White"/>
                                                        <TextBlock Text="เล่นเกม (Gaming)" FontSize="12" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,2,0,0"/>
                                                    </StackPanel>
                                                </Button>
                                                <Button x:Name="BtnCpuDef" Style="{StaticResource SecondaryButton}" Height="65" Margin="6">
                                                    <StackPanel>
                                                        <TextBlock x:Name="TxtCpuDef" Text="Default" FontSize="17" FontWeight="Bold" HorizontalAlignment="Center" Foreground="White"/>
                                                        <TextBlock Text="ค่าเริ่มต้นของระบบ" FontSize="12" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,2,0,0"/>
                                                    </StackPanel>
                                                </Button>
                                            </UniformGrid>
                                        </StackPanel>
                                    </Border>
                                    <Border Background="{StaticResource CardGradient}" CornerRadius="12" Margin="0,0,0,20" Padding="30" BorderThickness="1" BorderBrush="#1C1C1C">
                                        <StackPanel>
                                            <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                                <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                                <TextBlock Text="CPU Core Optimization" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                            </StackPanel>
                                            <TextBlock Text="ปลดล็อค Core ทั้งหมดให้ทำงานเต็มที่ ไม่มีการพัก (Unpark Cores)" Foreground="#A3A3A3" Margin="0,0,0,20"/>
                                            <StackPanel Orientation="Horizontal">
                                                <Button x:Name="BtnUnpark" Style="{StaticResource PremiumButton}" Width="240" Height="55" Margin="0,0,15,0">
                                                    <StackPanel Orientation="Horizontal">
                                                        <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE945;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center"/>
                                                        <TextBlock Text="UNPARK ALL CORES" FontWeight="Bold" FontSize="14" VerticalAlignment="Center"/>
                                                    </StackPanel>
                                                </Button>
                                                <Button x:Name="BtnPark" Style="{StaticResource SecondaryButton}" Width="200" Height="55">
                                                    <StackPanel Orientation="Horizontal">
                                                        <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE777;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center" Foreground="#A3A3A3"/>
                                                        <TextBlock Text="PARK DEFAULT" FontWeight="Bold" FontSize="14" VerticalAlignment="Center" Foreground="#c2b5bc"/>
                                                    </StackPanel>
                                                </Button>
                                            </StackPanel>
                                        </StackPanel>
                                    </Border>
                                </StackPanel>
                            </ScrollViewer>
                        </Grid>

                        <!-- VIEW 3: INPUT -->
                        <Grid x:Name="ViewInput" Visibility="Collapsed">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>
                            <StackPanel Grid.Row="0" Margin="0,0,0,30">
                                <TextBlock Text="Input (Mouse/Keyboard)" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="ลดอาการดีเลย์ของการขยับเมาส์และคีย์บอร์ด (Lowest Input Lag)" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>

                            <Border Grid.Row="1" Background="{StaticResource CardGradient}" CornerRadius="12" Padding="30" BorderThickness="1" BorderBrush="#1C1C1C" VerticalAlignment="Top">
                                <StackPanel>
                                    <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                        <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                        <TextBlock Text="Mouse Fix &amp; Keyboard Response" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                    </StackPanel>
                                    <TextBlock Text="ปิดการเร่งความเร็วเมาส์ของ Windows (Mouse Acceleration) และปรับแต่งอัตราตอบสนองคีย์บอร์ด" Foreground="#A3A3A3" Margin="0,0,0,25" TextWrapping="Wrap"/>
                                    <Button x:Name="BtnInputMouse" Style="{StaticResource PremiumButton}" Height="55" Margin="0,0,0,15">
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE962;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center"/>
                                            <TextBlock x:Name="TxtInputMouse" Text="APPLY MOUSE &amp; KEYBOARD TWEAK" FontWeight="Bold" FontSize="14" VerticalAlignment="Center"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnInputRestore" Style="{StaticResource SecondaryButton}" Height="50">
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE777;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center" Foreground="#A3A3A3"/>
                                            <TextBlock Text="RESTORE INPUT DEFAULTS" FontWeight="Bold" FontSize="14" VerticalAlignment="Center" Foreground="#c2b5bc"/>
                                        </StackPanel>
                                    </Button>
                                </StackPanel>
                            </Border>
                        </Grid>

                        <!-- VIEW 4: NETWORK -->
                        <Grid x:Name="ViewNetwork" Visibility="Collapsed">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>
                            <StackPanel Grid.Row="0" Margin="0,0,0,30">
                                <TextBlock Text="Network (QoS / TCP)" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="ปรับแต่งอินเทอร์เน็ต ลดปิง (Ping) แก้ปัญหาหน่วงในเซิร์ฟเวอร์" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>
                            
                            <Border Grid.Row="1" Background="{StaticResource CardGradient}" CornerRadius="12" Padding="30" BorderThickness="1" BorderBrush="#1C1C1C" VerticalAlignment="Top">
                                <StackPanel>
                                    <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                        <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                        <TextBlock Text="TCP/IP &amp; QoS Settings" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                    </StackPanel>
                                    <TextBlock Text="ตั้งค่า Network Adapter, DNS, และ TCP Settings ให้ส่งแพ็คเกจข้อมูลได้อย่างรวดเร็ว" Foreground="#A3A3A3" Margin="0,0,0,25" TextWrapping="Wrap"/>
                                    <Button x:Name="BtnNetTweak" Style="{StaticResource PremiumButton}" Height="55" Margin="0,0,0,15">
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE774;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center"/>
                                            <TextBlock x:Name="TxtNetTweak" Text="APPLY NETWORK TWEAK (GAMING)" FontWeight="Bold" FontSize="14" VerticalAlignment="Center"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnNetFlush" Style="{StaticResource SecondaryButton}" Height="50" Margin="0,0,0,15">
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE81C;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center" Foreground="#A3A3A3"/>
                                            <TextBlock Text="FLUSH DNS &amp; RESET IP" FontWeight="Bold" FontSize="14" VerticalAlignment="Center" Foreground="#c2b5bc"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnNetRestore" Style="{StaticResource SecondaryButton}" Height="50">
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE777;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center" Foreground="#A3A3A3"/>
                                            <TextBlock x:Name="TxtNetRestore" Text="RESTORE NETWORK DEFAULTS" FontWeight="Bold" FontSize="14" VerticalAlignment="Center" Foreground="#c2b5bc"/>
                                        </StackPanel>
                                    </Button>
                                </StackPanel>
                            </Border>
                        </Grid>

                        <!-- VIEW 5: POWER / TIMER -->
                        <Grid x:Name="ViewPower" Visibility="Collapsed">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>
                            <StackPanel Grid.Row="0" Margin="0,0,0,30">
                                <TextBlock Text="Power / Timer" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="แผนการใช้พลังงาน และความละเอียดของ Timer Resolution" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>
                            
                            <StackPanel Grid.Row="1">
                                <Border Background="{StaticResource CardGradient}" CornerRadius="12" Padding="30" BorderThickness="1" BorderBrush="#1C1C1C" Margin="0,0,0,20">
                                    <StackPanel>
                                        <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                            <Rectangle Width="4" Height="18" Fill="{StaticResource AccentGradient}" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                            <TextBlock Text="Power Plan (แผนพลังงาน)" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                        </StackPanel>
                                        <TextBlock Text="สร้างและใช้แผนพลังงาน 'Ultimate Performance' ที่ปลดล็อคข้อจำกัดของการใช้พลังงาน" Foreground="#A3A3A3" Margin="0,0,0,20"/>
                                        <Button x:Name="BtnPowerImport" Style="{StaticResource PremiumButton}" Height="55">
                                            <StackPanel Orientation="Horizontal">
                                                <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE898;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center"/>
                                                <TextBlock x:Name="TxtPowerImport" Text="IMPORT &amp; APPLY POWER PLAN" FontWeight="Bold" FontSize="14" VerticalAlignment="Center"/>
                                            </StackPanel>
                                        </Button>
                                    </StackPanel>
                                </Border>
                                
                                
                            </StackPanel>
                        </Grid>

                        <!-- VIEW 6: TOOLS -->
                        <Grid x:Name="ViewTools" Visibility="Collapsed">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>
                            <StackPanel Grid.Row="0" Margin="0,0,0,30">
                                <TextBlock Text="Tools (เครื่องมือเสริม)" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="เคลียร์แคช ลบไฟล์ขยะ และล้างแรม (RAM Cleaner)" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>
                            
                            <Border Grid.Row="1" Background="{StaticResource CardGradient}" CornerRadius="12" Padding="30" BorderThickness="1" BorderBrush="#1C1C1C" VerticalAlignment="Top">
                                <UniformGrid Columns="2" Rows="2">
                                    <Button x:Name="BtnFiveMCache" Style="{StaticResource PremiumButton}" Height="70" Margin="10">
                                        <StackPanel>
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE74D;" FontSize="20" HorizontalAlignment="Center" Margin="0,0,0,4"/>
                                            <TextBlock Text="CLEAN FIVEM CACHE" FontWeight="Bold" FontSize="13" HorizontalAlignment="Center"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnTemp" Style="{StaticResource SecondaryButton}" Height="70" Margin="10">
                                        <StackPanel>
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE74C;" FontSize="20" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,0,0,4"/>
                                            <TextBlock Text="CLEAR TEMP / JUNK FILES" FontWeight="Bold" FontSize="13" Foreground="#c2b5bc" HorizontalAlignment="Center"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnRam" Style="{StaticResource SecondaryButton}" Height="70" Margin="10">
                                        <StackPanel>
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE9A1;" FontSize="20" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,0,0,4"/>
                                            <TextBlock Text="FREE UP RAM" FontWeight="Bold" FontSize="13" Foreground="#c2b5bc" HorizontalAlignment="Center"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnGpu" Style="{StaticResource SecondaryButton}" Height="70" Margin="10">
                                        <StackPanel>
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE945;" FontSize="20" Foreground="#A3A3A3" HorizontalAlignment="Center" Margin="0,0,0,4"/>
                                            <TextBlock Text="OPTIMIZE GPU SHADERS" FontWeight="Bold" FontSize="13" Foreground="#c2b5bc" HorizontalAlignment="Center"/>
                                        </StackPanel>
                                    </Button>
                                </UniformGrid>
                            </Border>
                        </Grid>

                        <!-- VIEW 7: RESTORE -->
                        <Grid x:Name="ViewRestore" Visibility="Collapsed">
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>
                            <StackPanel Grid.Row="0" Margin="0,0,0,30">
                                <TextBlock Text="Restore (คืนค่าเดิม)" Foreground="White" FontSize="30" FontWeight="Bold"/>
                                <TextBlock Text="สำรองข้อมูล (Backup) และคืนค่าระบบกลับเป็นเหมือนเดิม" Foreground="#A3A3A3" FontSize="15" Margin="0,6,0,0"/>
                            </StackPanel>
                            
                            <Border Grid.Row="1" Background="#1c0712" CornerRadius="12" Padding="30" BorderThickness="1" BorderBrush="#3d1425" VerticalAlignment="Top">
                                <StackPanel>
                                    <StackPanel Orientation="Horizontal" Margin="0,0,0,20">
                                        <Rectangle Width="4" Height="18" Fill="#ef4444" Margin="0,0,12,0" RadiusX="2" RadiusY="2"/>
                                        <TextBlock Text="System Restore &amp; Backup" Foreground="White" FontWeight="Bold" FontSize="16"/>
                                    </StackPanel>
                                    <TextBlock Text="หากคอมพิวเตอร์ของคุณมีปัญหาจากการตั้งค่า คุณสามารถกดคืนค่าทั้งหมดได้ที่นี่" Foreground="#A3A3A3" Margin="0,0,0,25" TextWrapping="Wrap"/>
                                    <Button x:Name="BtnRestoreAll" Height="55" Margin="0,0,0,15">
                                        <Button.Style>
                                            <Style TargetType="Button" BasedOn="{StaticResource SecondaryButton}">
                                                <Setter Property="BorderBrush" Value="#4f152b"/>
                                                <Style.Triggers>
                                                    <Trigger Property="IsMouseOver" Value="True">
                                                        <Setter Property="Background" Value="#3d1121"/>
                                                    </Trigger>
                                                </Style.Triggers>
                                            </Style>
                                        </Button.Style>
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE72C;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center" Foreground="#ff5a8e"/>
                                            <TextBlock Text="RESTORE ALL SETTINGS TO DEFAULT" FontWeight="Bold" FontSize="14" VerticalAlignment="Center" Foreground="#ff5a8e"/>
                                        </StackPanel>
                                    </Button>
                                    <Button x:Name="BtnRestorePoint" Style="{StaticResource SecondaryButton}" Height="50">
                                        <StackPanel Orientation="Horizontal">
                                            <TextBlock FontFamily="Segoe MDL2 Assets" Text="&#xE78C;" FontSize="18" Margin="0,0,10,0" VerticalAlignment="Center" Foreground="#A3A3A3"/>
                                            <TextBlock Text="CREATE SYSTEM RESTORE POINT" FontWeight="Bold" FontSize="14" VerticalAlignment="Center" Foreground="#c2b5bc"/>
                                        </StackPanel>
                                    </Button>
                                </StackPanel>
                            </Border>
                        </Grid>
                    </Grid>
                </Grid>
            </Grid>
        </Grid>
    </Border>
</Window>
"@

# Read XAML
$reader = (New-Object System.Xml.XmlNodeReader $xaml)
$window = [Windows.Markup.XamlReader]::Load($reader)

# Define Arrays for easier looping
$views = @("ViewDashboard", "ViewCPU", "ViewInput", "ViewNetwork", "ViewPower", "ViewTools", "ViewRestore")
$navButtons = @("BtnNavDashboard", "BtnNavCPU", "BtnNavInput", "BtnNavNetwork", "BtnNavPower", "BtnNavTools", "BtnNavRestore")

# LOG FUNCTION
function Write-Log {
    param([string]$Message)
    # Log removed
}

# SYSTEM INFO GATHERING
function Update-SystemInfo {
    Write-Log "Gathering System Info..."
    try {
        $os = (Get-WmiObject Win32_OperatingSystem).Caption
        $window.FindName("SysOs").Text = "OS: $os"
        
        $cpu = (Get-WmiObject Win32_Processor).Name
        $window.FindName("SysCpu").Text = "CPU: $cpu"
        
        $ramObj = Get-WmiObject Win32_ComputerSystem
        $ramGb = [math]::Round($ramObj.TotalPhysicalMemory / 1GB, 1)
        $window.FindName("SysRam").Text = "RAM: $ramGb GB"
        
        # Simple HWID simulation or real UUID
        $uuid = (Get-WmiObject Win32_ComputerSystemProduct).UUID
        $window.FindName("SysHwid").Text = "HWID: $uuid"
        
        Write-Log "System Info updated."
    } catch {
        Write-Log "Failed to get system info."
    }
}

function Update-Status {
    Write-Log "Refreshing Status..."
    try {
        $win32prio = (Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -ErrorAction SilentlyContinue).Win32PrioritySeparation
        if ($null -ne $win32prio) {
            $hex = '0x{0:X2}' -f $win32prio
            $window.FindName("StatusPriority").Text = "Win32PrioritySeparation: $hex"

            # Reset all buttons
            $window.FindName("TxtCpu26").Text = "0x26"; $window.FindName("TxtCpu26").Foreground = "White"; $window.FindName("BtnCpu26").Style = $window.Resources["SecondaryButton"]
            $window.FindName("TxtCpu28").Text = "0x28"; $window.FindName("TxtCpu28").Foreground = "White"; $window.FindName("BtnCpu28").Style = $window.Resources["SecondaryButton"]
            $window.FindName("TxtCpu2A").Text = "0x2A"; $window.FindName("TxtCpu2A").Foreground = "White"; $window.FindName("BtnCpu2A").Style = $window.Resources["SecondaryButton"]
            $window.FindName("TxtCpu16").Text = "0x16"; $window.FindName("TxtCpu16").Foreground = "White"; $window.FindName("BtnCpu16").Style = $window.Resources["SecondaryButton"]
            $window.FindName("TxtCpu18").Text = "0x18"; $window.FindName("TxtCpu18").Foreground = "White"; $window.FindName("BtnCpu18").Style = $window.Resources["SecondaryButton"]
            $window.FindName("TxtCpuDef").Text = "Default"; $window.FindName("TxtCpuDef").Foreground = "White"; $window.FindName("BtnCpuDef").Style = $window.Resources["SecondaryButton"]

            # Highlight active button
            $tb = $null
            $btn = $null
            if ($win32prio -eq 38) { $tb = $window.FindName("TxtCpu26"); $btn = $window.FindName("BtnCpu26") }
            elseif ($win32prio -eq 40) { $tb = $window.FindName("TxtCpu28"); $btn = $window.FindName("BtnCpu28") }
            elseif ($win32prio -eq 42) { $tb = $window.FindName("TxtCpu2A"); $btn = $window.FindName("BtnCpu2A") }
            elseif ($win32prio -eq 22) { $tb = $window.FindName("TxtCpu16"); $btn = $window.FindName("BtnCpu16") }
            elseif ($win32prio -eq 24) { $tb = $window.FindName("TxtCpu18"); $btn = $window.FindName("BtnCpu18") }
            elseif ($win32prio -eq 2) { $tb = $window.FindName("TxtCpuDef"); $btn = $window.FindName("BtnCpuDef") }

            if ($tb -and $btn) {
                $tb.Text = "Successfully!"
                $tb.Foreground = "#4CAF50"
                $btn.Style = $window.Resources["PremiumButton"]
            }
        }
    } catch {}
}

# STARTUP
Write-Log "lnwzamak Firstx ready  |  Administrator"
Update-SystemInfo
Update-Status

# Function to switch views
function Switch-View {
    param([string]$targetViewName, [string]$targetButtonName)
    foreach ($viewName in $views) {
        $window.FindName($viewName).Visibility = 'Collapsed'
    }
    $window.FindName($targetViewName).Visibility = 'Visible'
    foreach ($btnName in $navButtons) {
        $window.FindName($btnName).Style = $window.Resources["MenuButton"]
    }
    $window.FindName($targetButtonName).Style = $window.Resources["ActiveMenuButton"]
    Write-Log "Navigated to $targetViewName"
}

# NAVIGATION
# NAVIGATION
$window.FindName("BtnNavDashboard").Add_Click({ Switch-View "ViewDashboard" "BtnNavDashboard" })
$window.FindName("BtnNavCPU").Add_Click({ Switch-View "ViewCPU" "BtnNavCPU" })
$window.FindName("BtnNavInput").Add_Click({ Switch-View "ViewInput" "BtnNavInput" })
$window.FindName("BtnNavNetwork").Add_Click({ Switch-View "ViewNetwork" "BtnNavNetwork" })
$window.FindName("BtnNavPower").Add_Click({ Switch-View "ViewPower" "BtnNavPower" })
$window.FindName("BtnNavTools").Add_Click({ Switch-View "ViewTools" "BtnNavTools" })
$window.FindName("BtnNavRestore").Add_Click({ Switch-View "ViewRestore" "BtnNavRestore" })

# DASHBOARD ACTIONS
$window.FindName("BtnRefreshStatus").Add_Click({ Update-Status })
$window.FindName("BtnApplyRec").Add_Click({
    Write-Log "Applying Quick All Settings..."
    
    # Trigger Mouse & Keyboard tweaks (CPU 0x26 + Regs)
    $btnInp = $window.FindName("BtnInputTweak")
    if ($btnInp) { $btnInp.RaiseEvent((New-Object System.Windows.RoutedEventArgs([System.Windows.Controls.Primitives.ButtonBase]::ClickEvent))) }
    
    # Trigger Network tweaks (Network Optimize + TCP)
    $btnNet = $window.FindName("BtnNetTweak")
    if ($btnNet) { $btnNet.RaiseEvent((New-Object System.Windows.RoutedEventArgs([System.Windows.Controls.Primitives.ButtonBase]::ClickEvent))) }
    
    # Trigger Power Plan tweaks
    $btnPow = $window.FindName("BtnPowerImport")
    if ($btnPow) { $btnPow.RaiseEvent((New-Object System.Windows.RoutedEventArgs([System.Windows.Controls.Primitives.ButtonBase]::ClickEvent))) }
    
    Write-Log "All Recommended Settings Applied!"
    
    $tb = $window.FindName("TxtApplyRec")
    if ($tb) {
        $tb.Text = "Successfully!"
        $tb.Foreground = "#4CAF50" # Green
        
        $timer = New-Object System.Windows.Threading.DispatcherTimer
        $timer.Interval = [TimeSpan]::FromSeconds(2.5)
        $timer.Add_Tick({
            $tb.Text = "APPLY RECOMMENDED"
            $tb.ClearValue([System.Windows.Controls.TextBlock]::ForegroundProperty)
            $timer.Stop()
        })
        $timer.Start()
    }
})

# CPU ACTIONS
function Set-Win32Prio {
    param([int]$val, [string]$hex, [string]$txtBlockName)
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -Value $val -Type DWord -Force
    Write-Log "Win32PrioritySeparation set to $hex"
    
    # Update-Status handles visual update of buttons
    Update-Status
    
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing
    $notifyIcon = New-Object System.Windows.Forms.NotifyIcon
    $notifyIcon.Icon = [System.Drawing.SystemIcons]::Information
    $notifyIcon.BalloonTipTitle = "Successfully!"
    $notifyIcon.BalloonTipText = "ตั้งค่า $hex สำเร็จ กรุณารีสตาร์ทคอมพิวเตอร์ 1 รอบ"
    $notifyIcon.Visible = $true
    $notifyIcon.ShowBalloonTip(3000)
}
$window.FindName("BtnCpu26").Add_Click({ Set-Win32Prio 38 "0x26" "TxtCpu26" })
$window.FindName("BtnCpu28").Add_Click({ Set-Win32Prio 40 "0x28" "TxtCpu28" })
$window.FindName("BtnCpu2A").Add_Click({ Set-Win32Prio 42 "0x2A" "TxtCpu2A" })
$window.FindName("BtnCpu16").Add_Click({ Set-Win32Prio 22 "0x16" "TxtCpu16" })
$window.FindName("BtnCpu18").Add_Click({ Set-Win32Prio 24 "0x18" "TxtCpu18" })
$window.FindName("BtnCpuDef").Add_Click({ Set-Win32Prio 2 "Default" "TxtCpuDef" })

$window.FindName("BtnUnpark").Add_Click({
    Write-Log "Unparking CPU Cores..."
    powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
    powercfg -setactive scheme_current
    Write-Log "CPU Cores Unparked."
})
$window.FindName("BtnPark").Add_Click({
    Write-Log "Restoring CPU Core Parking..."
    powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 5
    powercfg -setactive scheme_current
    Write-Log "CPU Core Parking restored to default."
})

# INPUT ACTIONS
$window.FindName("BtnInputMouse").Add_Click({
    Write-Log "Applying Mouse/Keyboard Tweaks..."
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSensitivity" -Value "10" -Force
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Value "0" -Force
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Value "0" -Force
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardSpeed" -Value "31" -Force
    
    # New_Reg (1).reg - MouseKeys
    $mkPath = "HKCU:\Control Panel\Accessibility\MouseKeys"
    if (-not (Test-Path $mkPath)) { New-Item -Path $mkPath -Force | Out-Null }
    Set-ItemProperty -Path $mkPath -Name "Flags" -Value "1" -Type String -Force
    Set-ItemProperty -Path $mkPath -Name "MaximumSpeed" -Value "5000" -Type String -Force
    Set-ItemProperty -Path $mkPath -Name "TimeToMaximumSpeed" -Value "1" -Type String -Force
    Set-ItemProperty -Path $mkPath -Name "Beep2" -Value "No" -Type String -Force
    Set-ItemProperty -Path $mkPath -Name "Flags2" -Value "1000" -Type String -Force
    Set-ItemProperty -Path $mkPath -Name "MaximumSpeed2" -Value "5000" -Type String -Force
    Set-ItemProperty -Path $mkPath -Name "TimeToMaximumSpeed2" -Value "5000" -Type String -Force
    
    # new (1).reg - LanmanServer
    $lanPath = "HKLM:\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters"
    if (-not (Test-Path $lanPath)) { New-Item -Path $lanPath -Force | Out-Null }
    Set-ItemProperty -Path $lanPath -Name "autodisconnect" -Value 0xffffffff -Type DWord -Force
    Set-ItemProperty -Path $lanPath -Name "Size" -Value 3 -Type DWord -Force
    Set-ItemProperty -Path $lanPath -Name "EnableOplocks" -Value 0 -Type DWord -Force
    Set-ItemProperty -Path $lanPath -Name "IRPStackSize" -Value 32 -Type DWord -Force
    Set-ItemProperty -Path $lanPath -Name "SharingViolationDelay" -Value 0 -Type DWord -Force
    Set-ItemProperty -Path $lanPath -Name "SharingViolationRetries" -Value 0 -Type DWord -Force
    
    Write-Log "Input & Network Tweaks Applied."
    
    # Successfully UI Update
    $tb = $window.FindName("TxtInputMouse")
    if ($tb) {
        $tb.Text = "Successfully!"
        $tb.Foreground = "#4CAF50" # Green
        
        $timer = New-Object System.Windows.Threading.DispatcherTimer
        $timer.Interval = [TimeSpan]::FromSeconds(2.5)
        $timer.Add_Tick({
            $tb.Text = "APPLY MOUSE & KEYBOARD TWEAK"
            $tb.ClearValue([System.Windows.Controls.TextBlock]::ForegroundProperty)
            $timer.Stop()
        })
        $timer.Start()
    }
})
$window.FindName("BtnInputRestore").Add_Click({
    Write-Log "Restoring Input Defaults..."
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Value "1" -Force
    Set-ItemProperty -Path "HKCU:\Control Panel\Keyboard" -Name "KeyboardDelay" -Value "1" -Force
    Write-Log "Input Defaults Restored."
})

# NETWORK ACTIONS
$window.FindName("BtnNetTweak").Add_Click({
    Write-Log "Applying Network Tweaks for Gaming..."
    
    # 1. Embed and run TCP.reg
    $tcpRegContent = @'
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\]
"TcpTimedWaitDelay"=dword:0000001e
"MaxUserPort"=dword:0000fffe
"DisableTaskOffload"=dword:00000001
"DefaultTTL"=dword:00000040
"EnablePMTUDiscovery"=dword:00000001
"EnablePMTUBHDetect"=dword:00000000
"TcpDelAckTicks"=dword:00000000
"TcpAckFrequency"=dword:00000001
"TCPNoDelay"=dword:00000001
"TcpMaxDataRetransmissions"=dword:00000003
"SackOpts"=dword:00000000
"EnableICMPRedirect"=dword:00000000
"DisableTaskOffload"=dword:00000001
"TcpNumConnections"=dword:00fffffe
"DefaultTTL"=dword:0000040
"EnableTCPA"=dword:00000000
"DelayedAckTimeout"=dword:00000000
"EnablePMTUBHDetect"=dword:00000000
"EnablePMTUDiscovery"=dword:00000001
"MaxUserPort"=dword:0000fffe
"TcpTimedWaitDelay"=dword:0000001e
"EnableRSS"=dword:00000001
"TcpMaxDataRetransmissions"=dword:00000003
"EnableDeadGWDetect"=dword:00000000
"EnableTCPChimney"=dword:00000000
"TcpFastCopy"=dword:00000001
"DelayedAckTicks"=dword:00000000
"KeepAliveInterval"=dword:000003e8
"KeepAliveTime"=dword:000493e0
"MaxFreeTcbs"=dword:00010000
"MaxHashTableSize"=dword:00010000
'@
    $tempReg = Join-Path $env:TEMP "tcp_temp_30106451.reg"
    $tcpRegContent | Out-File $tempReg -Encoding UTF8
    Start-Process -FilePath "reg.exe" -ArgumentList "import "$tempReg"" -Wait -WindowStyle Hidden
    Remove-Item $tempReg -Force -ErrorAction SilentlyContinue

    # 2. Embed and run Network Optimize.ps1
    $netOptContent = @'
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser





bcdedit /deletevalue useplatformtick

bcdedit /set useplatformtick yes

bcdedit /deletevalue useplatformclock

bcdedit /set disabledynamictick yes
 
bcdedit /set tscsyncpolicy Enhanced

bcdedit /set nx optout

bcdedit /set bootmenupolicy standard

bcdedit /set bootux disabled

bcdedit /set x2apicpolicy enable

bcdedit /set quietboot yes

bcdedit /set useplatformclock false

bcdedit /set uselegacyapicmode no

bcdedit /set hypervisorlaunchtype off

wmic process where name="explorer.exe" CALL setpriority "high priority"

powercfg -attributes SUB_PROCESSOR 75b0ae3f-bce0-45a7-8c89-c9611c25e100 -ATTRIB_HIDE



netsh int tcp set global sack=enabled

netsh int tcp set global maxsynretransmissions=2

netsh int ipv4 set dynamicport tcp start=1025 num=64510

netsh int tcp set global autotuninglevel=restricted

netsh int tcp set global rss=enabled

netsh int tcp set global chimney=disabled

netsh int tcp set global dca=enabled

netsh int tcp set global ecncapability=disabled

netsh int tcp set global timestamps=disabled

netsh int ip set global taskoffload=disabled

netsh int tcp set global nonsackrttresiliency=disabled

netsh int tcp set global congestionprovider=ctcp

netsh int tcp set global pacingprofile=off

netsh int tcp set heuristics disabled

netsh int tcp set global fastopen=enabled

netsh int tcp set global initialRto=2000

netsh int tcp set global maxsynretransmissions=2

netsh int tcp set global netdma=enabled

netsh int tcp set global nonsackrttresiliency=disabled

netsh int tcp set global hystart=enabled

netsh int tcp set global minrto=300

netsh int ipv4 set global icmpredirects=disabled

netsh int tcp set global maxackdelay=0

netsh int tcp set global autotuninglevel=highlyrestricted

netsh int tcp set supplemental template=custom icw=10

netsh int ipv4 set global multicastforwarding=disabled

netsh interface ipv6 set teredo disabled

netsh int tcp set global initialcongestionwindow=4

netsh int tcp set global rto=1500

netsh int tcp set global congestionprovider=ctcp

netsh int tcp set global ecncapability=enabled

netsh int tcp set global initialRto=1000

netsh int tcp set global nonsackrttresiliency=disabled

netsh int tcp set global maxsynretransmissions=2

netsh int tcp set global pacingprofile=off

netsh wlan set autoconfig enabled=no interface="Wi-Fi"

netsh int tcp set global fastopen=disabled

netsh int tcp set global sack=enabled

netsh int tcp set global maxsynretransmissions=1

netsh int ip set global reassemblylimit=65535

netsh int ip set global sourceroutingbehavior=drop

netsh int tcp set global initialRto=1000

netsh int tcp set global rto=2000

netsh int ip set global sourceroutingbehavior=drop

netsh int tcp set global securityprofiles=disabled

netsh int tcp set global synattackprotect=enabled

netsh int tcp set global fastopenfallback=disabled

netsh int ip set global neighborcachelimit=8192

netsh int tcp set global sack=enabled

netsh int tcp set global keepaliveinterval=1000

netsh int tcp set global delayedacktimeout=10

netsh int tcp set global initialcongestionwindow=10

netsh int ip set global defaultcurhoplimit=64

netsh int tcp set global keepaliveinterval=1000

netsh int tcp set global delayedacktimeout=10

netsh int tcp set global initialcongestionwindow=10

netsh int ip set global defaultcurhoplimit=64

Get-NetAdapterAdvancedProperty -DisplayName "*Interrupt Moderation Rate*" | Set-NetAdapterAdvancedProperty -DisplayValue "Low"



Disable-MMAgent -MemoryCompression

Get-NetAdapterBinding -ComponentID ms_tcpip6 | Disable-NetAdapterBinding

Get-NetAdapterAdvancedProperty -DisplayName "*Adaptive Inter-Frame Spacing*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty -DisplayName "*Gigabit Lite*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty -DisplayName "*Power Saving Mode*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterBinding -ComponentID ms_server | Disable-NetAdapterBinding

Get-NetAdapterAdvancedProperty -DisplayName "*Receive Segment Coalescing*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty -DisplayName "*Roaming Aggressiveness*" | Set-NetAdapterAdvancedProperty -DisplayValue "Lowest"

Get-NetAdapterAdvancedProperty -DisplayName "*Wireless Mode*" | Set-NetAdapterAdvancedProperty -DisplayValue "802.11ac"

$devices = Get-PnpDevice | Where-Object {$_.FriendlyName -match "Ethernet|Network|NVIDIA|AMD"}
foreach ($d in $devices) {
    Write-Host "Boost IRQ for $($d.FriendlyName)"
}

Get-NetAdapterAdvancedProperty -DisplayName "*Channel Width*" | Set-NetAdapterAdvancedProperty -DisplayValue "Auto"

Get-NetAdapterAdvancedProperty -DisplayName "*Interrupt Moderation Rate*" | Set-NetAdapterAdvancedProperty -DisplayValue "Off"

Get-NetAdapterAdvancedProperty -DisplayName "*Receive Side Coalescing*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterBinding -ComponentID ms_tcpip6 | Disable-NetAdapterBinding

Get-NetAdapterBinding -ComponentID ms_server | Disable-NetAdapterBinding

Get-NetAdapterAdvancedProperty -DisplayName "*Receive Segment Coalescing*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty -DisplayName "*Large Send Offload v2 (IPv4)*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty -DisplayName "*Large Send Offload v2 (IPv6)*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapterAdvancedProperty -DisplayName "*Jumbo Packet*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-AppxPackage Microsoft.XboxGamingOverlay | Remove-AppxPackage

New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" `
-Name "GlobalTimerResolutionRequests" -PropertyType DWord -Value 1 -Force

Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "ForegroundLockTimeout" -Value 0

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f

Get-Service *xbox* | Stop-Service -Force
Get-Service *xbox* | Set-Service -StartupType Disabled

Set-MpPreference -DisableRealtimeMonitoring $true

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v SeparateProcess /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f

Disable-MMAgent -mc
Disable-MMAgent -pc

ipconfig /flushdns

Disable-MMAgent -MemoryCompression

fsutil behavior set DisableDeleteNotify 0

Get-NetAdapterPowerManagement | Set-NetAdapterPowerManagement -AllowComputerToTurnOffDevice Disabled

Get-NetAdapterAdvancedProperty | Where-Object {$_.DisplayName -like "*Interrupt Moderation*"} | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

Get-NetAdapter | Set-NetAdapter -AutoNegotiation $true

schtasks /change /tn "\Microsoft\Windows\Maintenance\WinSAT" /disable

sc config Audiosrv type= own

Get-NetAdapterBinding -ComponentID ms_pacer | Disable-NetAdapterBinding

Set-NetAdapterAdvancedProperty -DisplayName "*Energy Efficient Ethernet*" -DisplayValue "Disabled"

Disable-NetAdapterLso -Name "*"

Get-Process | Where-Object {$_.ProcessName -like "*game*"} | ForEach-Object {$_.PriorityClass="High"}

sc config LanmanWorkstation depend= Bowser/MRxSmb20/NSI

Get-NetAdapterAdvancedProperty -DisplayName "*Coalescing*" | Set-NetAdapterAdvancedProperty -DisplayValue "Disabled"

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched" -Name "NonBestEffortLimit" -Value 0 -PropertyType DWord -Force

Set-NetAdapterAdvancedProperty -DisplayName "*Flow Control*" -DisplayValue "Disabled"

Disable-NetAdapterRsc -Name "*"

Disable-NetAdapterRss -Name "Ethernet"

Set-NetAdapterAdvancedProperty -DisplayName "Receive Side Scaling" -DisplayValue "Disabled"

Disable-NetAdapterLso -Name "*"
Disable-NetAdapterRsc -Name "*"

Set-NetAdapterAdvancedProperty -DisplayName "*Checksum Offload*" -DisplayValue "Disabled"

New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Psched" -Name "NonBestEffortLimit" -Value 0 -PropertyType DWord -Force

Get-NetAdapterPowerManagement | Set-NetAdapterPowerManagement -AllowComputerToTurnOffDevice Disabled

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableSettingSync /t REG_DWORD /d 2 /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\SettingSync" /v DisableSettingSync /t REG_DWORD /d 2 /f

reg add "HKCU\Control Panel\Desktop" /v ForegroundLockTimeout /t REG_DWORD /d 0 /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v NonBestEffortLimit /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkThrottlingIndex /t REG_DWORD /d 4294967295 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v DisableDynamicTick /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v ThreadQuantum /t REG_DWORD /d 6 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DelayedAckTimeout /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v DefaultSendWindow /t REG_DWORD /d 65536 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v DefaultReceiveWindow /t REG_DWORD /d 65536 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanWorkstation\Parameters" /v DisableBandwidthThrottling /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Audio" /v DisableProtectedAudioDG /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v AlwaysOn /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v NetworkPriority /t REG_DWORD /d 6 /f

reg add "HKCU\Software\Microsoft\Windows\DWM" /v CompositionPolicy /t REG_DWORD /d 2 /f

reg add "HKCU\Control Panel\Desktop" /v LowLevelHooksTimeout /t REG_DWORD /d 0 /f

Get-NetIPInterface | Set-NetIPInterface -InterfaceMetric 10

reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI" /f

reg add "HKLM\SOFTWARE\Microsoft\DirectX" /v MaxFrameLatency /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\DirectX" /v FlipQueueSize /t REG_DWORD /d 1 /f

Get-NetAdapterAdvancedProperty | Where-Object {$_.DisplayName -like "*Interrupt Moderation*"} | Set-NetAdapterAdvancedProperty -DisplayValue "Low Latency"

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IoPriority /t REG_DWORD /d 3 /fd

Disable-NetAdapterRsc -Name "*"

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v QuantumLength /t REG_DWORD /d 20 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v AdjustDpcThreshold /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v LocalPriority /t REG_DWORD /d 4 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v HostPriority /t REG_DWORD /d 5 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v DnsPriority /t REG_DWORD /d 6 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v PriorityBoost /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v AdditionalCriticalWorkerThreads /t REG_DWORD /d 4 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Executive" /v AdditionalDelayedWorkerThreads /t REG_DWORD /d 4 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisableLazyWrite /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v CacheHashTableSize /t REG_DWORD /d 384 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v EnableDynamicBacklog /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v CacheHashTableBucketSize /t REG_DWORD /d 1 /f

fsutil behavior set memoryusage 2

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Disk" /v TimeOutValue /t REG_DWORD /d 10 /f

netsh int tcp set heuristics disabled

Set-NetAdapterAdvancedProperty -DisplayName "*Receive Coalescing*" -DisplayValue "Disabled"

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Psched" /v MaxOutstandingSends /t REG_DWORD /d 1 /f

netsh int tcp set global chimney=disabled

Get-PnpDevice -Class "USB" | Disable-PnpDevice -Confirm:$false
Start-Sleep -Seconds 2
Get-PnpDevice -Class "USB" | Enable-PnpDevice -Confirm:$false

powercfg -requestsoverride process chrome.exe execution
powercfg -requestsoverride process msedge.exe execution

reg add "HKCU\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f

$proc = Get-Process
foreach ($p in $proc) {
    try { $p.PriorityClass = "High" } catch {}
}

Add-Type @"
using System;
using System.Runtime.InteropServices;
public class Timer {
    [DllImport("ntdll.dll")]
    public static extern uint NtSetTimerResolution(uint DesiredResolution, bool SetResolution, out uint CurrentResolution);
}
"@

[uint32]$cur = 0
[Timer]::NtSetTimerResolution(5000, $true, [ref]$cur)

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v FlipModelSwapchain /t REG_DWORD /d 1 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v Scheduling Category /t REG_SZ /d High /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v SFIO Priority /t REG_SZ /d High /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnableTCPA /t REG_DWORD /d 0 /f

$adapter = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
Set-NetAdapterAdvancedProperty -Name $adapter.Name -DisplayName "Interrupt Moderation Rate" -DisplayValue "Off"

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v ThreadDpcEnable /t REG_DWORD /d 0 /f

reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v SystemResponsiveness /t REG_DWORD /d 0 /f

reg add "HKCU\Software\Microsoft\Windows\DWM" /v MaxQueuedFrames /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v DefaultTTL /t REG_DWORD /d 64 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpNumConnections /t REG_DWORD /d 16777214 /f

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f

reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d 31 /f

reg add "HKCU\Control Panel\Mouse" /v MouseSensitivity /t REG_SZ /d 10 /f
reg add "HKCU\Control Panel\Mouse" /v MouseSpeed /t REG_SZ /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\FileSystem" /v NtfsDisable8dot3NameCreation /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI" /f

reg add "HKLM\SYSTEM\CurrentControlSet\Enum\PCI\YOUR_DEVICE_PATH\Device Parameters\Interrupt Management\MessageSignaledInterruptProperties" /v MSISupported /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v IRQPriorityBoost /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v ThreadQuantum /t REG_DWORD /d 6 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel" /v CoalescingTimerInterval /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v GPUPriority /t REG_DWORD /d 8 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v FlipQueueSize /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnablePacketQueue /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnableFastPath /t REG_DWORD /d 1 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v EnableDynamicBuffering /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v MaxPrefetchRequests /t REG_DWORD /d 0 /f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\HidUsb\Parameters" /v IdleTimeout /t REG_DWORD /d 0 /f



#Pause
'@
    $tempPs1 = Join-Path $env:TEMP "netopt_temp_1055779945.ps1"
    $netOptContent | Out-File $tempPs1 -Encoding UTF8
    Start-Process -FilePath "powershell.exe" -ArgumentList "-ExecutionPolicy Bypass -WindowStyle Hidden -File "$tempPs1"" -Wait
    Remove-Item $tempPs1 -Force -ErrorAction SilentlyContinue
    
    Write-Log "Network Tweaks and Reg applied successfully."
    
    # Successfully UI Update
    $tb = $window.FindName("TxtNetTweak")
    if ($tb) {
        $tb.Text = "Successfully!"
        $tb.Foreground = "#4CAF50" # Green
        
        $timer = New-Object System.Windows.Threading.DispatcherTimer
        $timer.Interval = [TimeSpan]::FromSeconds(2.5)
        $timer.Add_Tick({
            $tb.Text = "APPLY NETWORK TWEAK (GAMING)"
            $tb.ClearValue([System.Windows.Controls.TextBlock]::ForegroundProperty)
            $timer.Stop()
        })
        $timer.Start()
    }
})
$window.FindName("BtnNetFlush").Add_Click({
    Write-Log "Flushing DNS and Resetting IP..."
    ipconfig /flushdns | Out-Null
    netsh winsock reset | Out-Null
    Write-Log "DNS Flushed. Winsock Reset (Reboot recommended)."
})
$window.FindName("BtnNetRestore").Add_Click({
    Write-Log "Restoring Network Defaults..."
    
    Start-Process -FilePath "netsh.exe" -ArgumentList "winsock reset" -Wait -WindowStyle Hidden
    Start-Process -FilePath "netsh.exe" -ArgumentList "int ip reset" -Wait -WindowStyle Hidden
    Start-Process -FilePath "netsh.exe" -ArgumentList "int tcp reset" -Wait -WindowStyle Hidden
    
    netsh int tcp set global autotuninglevel=normal | Out-Null
    netsh int tcp set global chimney=default | Out-Null
    netsh int tcp set global dca=default | Out-Null
    netsh int tcp set global netdma=default | Out-Null
    netsh int tcp set global ecncapability=default | Out-Null
    netsh int tcp set global timestamps=default | Out-Null
    netsh int tcp set heuristics default | Out-Null
    
    Write-Log "Network Defaults Restored."
    
    $tb = $window.FindName("TxtNetRestore")
    if ($tb) {
        $tb.Text = "Successfully!"
        $tb.Foreground = "#4CAF50" # Green
        
        $timer = New-Object System.Windows.Threading.DispatcherTimer
        $timer.Interval = [TimeSpan]::FromSeconds(2.5)
        $timer.Add_Tick({
            $tb.Text = "RESTORE NETWORK DEFAULTS"
            $tb.ClearValue([System.Windows.Controls.TextBlock]::ForegroundProperty)
            $timer.Stop()
        })
        $timer.Start()
    }
})

# POWER / TIMER ACTIONS
$window.FindName("BtnPowerImport").Add_Click({
    Write-Log "Enabling Ultimate Performance Plan and applying tweaks..."
    
    $batContent = @'
@echo off
title august kodomo version 2 thanks for support
cls
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\mouclass\Parameters" /v "MouseDataQueueSize" /t REG_DWORD /d 20 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\kbdclass\Parameters" /v "KeyboardDataQueueSize" /t REG_DWORD /d 20 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d 0 /f
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
cls
reg add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
reg add "HKCU\Control Panel\Desktop" /v "HungAppTimeout" /t REG_SZ /d 4000 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ListviewAlphaSelect" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
cls
bcdedit /set useplatformclock no
bcdedit /set disabledynamictick yes
bcdedit /set bootux disabled
cls
sc stop "DiagTrack"
sc config "DiagTrack" start= disabled
sc stop "dmwappushservice"
sc config "dmwappushservice" start= disabled
sc stop "WSearch"
sc config "WSearch" start= disabled
sc stop "Spooler"
sc config "Spooler" start= disabled
sc stop "SysMain"
sc config "SysMain" start= disabled
sc stop "TrkWks"
sc config "TrkWks" start= disabled
sc stop "bthserv"
sc config "bthserv" start= disabled
sc stop "SecurityHealthService"
sc config "SecurityHealthService" start= disabled
sc stop "WerSvc"
sc config "WerSvc" start= disabled
cls
powercfg -setacvalueindex scheme_current sub_pciexpress aspm 0
powercfg -setactive scheme_current
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
cls


@echo off
title version 2 august sc services 
color 0a


reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 38 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 4294967295 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
cls
sc stop DiagTrack & sc config DiagTrack start= disabled
sc stop dmwappushservice & sc config dmwappushservice start= disabled
sc stop WSearch & sc config WSearch start= disabled
sc stop SysMain & sc config SysMain start= disabled
sc stop Spooler & sc config Spooler start= disabled
cls
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg -attributes SUB_PROCESSOR 5d76a2ca-e8c1-402f-a128-1a57d304b702 -ATTRIB_HIDE
powercfg -setacvalueindex scheme_current sub_processor 5d76a2ca-e8c1-402f-a128-1a57d304b702 0
powercfg -setactive scheme_current
cls
echo [+] Tweaking Boot Configuration...
bcdedit /set disabledynamictick yes
bcdedit /set useplatformtick yes
bcdedit /set tscsyncpolicy Enhanced
cls
del /q /f /s %temp%\* >nul 2>&1
rd /s /q "%localappdata%\FiveM\FiveM.app\cache\priv" >nul 2>&1
cls

exit
'@
    $tempBat = Join-Path $env:TEMP "power_tweak_1162721662.bat"
    $batContent | Out-File $tempBat -Encoding UTF8
    Start-Process -FilePath "cmd.exe" -ArgumentList "/c "$tempBat"" -Wait -WindowStyle Hidden
    Remove-Item $tempBat -Force -ErrorAction SilentlyContinue

    Write-Log "Power Plan and Tweaks Applied."
    
    $tb = $window.FindName("TxtPowerImport")
    if ($tb) {
        $tb.Text = "Successfully!"
        $tb.Foreground = "#4CAF50" # Green
        
        $timer = New-Object System.Windows.Threading.DispatcherTimer
        $timer.Interval = [TimeSpan]::FromSeconds(2.5)
        $timer.Add_Tick({
            $tb.Text = "IMPORT & APPLY POWER PLAN"
            $tb.ClearValue([System.Windows.Controls.TextBlock]::ForegroundProperty)
            $timer.Stop()
        })
        $timer.Start()
    }
})


# TOOLS ACTIONS
$window.FindName("BtnFiveMCache").Add_Click({
    Write-Log "Cleaning FiveM Cache..."
    $cachePath = "$env:LOCALAPPDATA\FiveM\FiveM.app\data\cache"
    $serverCache = "$env:LOCALAPPDATA\FiveM\FiveM.app\data\server-cache"
    $serverCachePriv = "$env:LOCALAPPDATA\FiveM\FiveM.app\data\server-cache-priv"
    
    $freed = 0
    foreach ($path in @($cachePath, $serverCache, $serverCachePriv)) {
        if (Test-Path $path) {
            Remove-Item -Path "$path\*" -Recurse -Force -ErrorAction SilentlyContinue
            Write-Log "Cleaned $path"
            $freed++
        }
    }
    if ($freed -eq 0) { Write-Log "FiveM Cache folders not found or already empty." }
})
$window.FindName("BtnTemp").Add_Click({
    Write-Log "Clearing Temp and Junk Files..."
    Remove-Item -Path "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "C:\Windows\Prefetch\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Log "Temp files cleared."
})
$window.FindName("BtnRam").Add_Click({
    Write-Log "Freeing up RAM..."
    [GC]::Collect()
    [GC]::WaitForPendingFinalizers()
    Write-Log "Garbage collection complete."
})
$window.FindName("BtnGpu").Add_Click({
    Write-Log "Optimizing GPU Shaders..."
    # Clear DirectX Cache
    Remove-Item -Path "$env:LOCALAPPDATA\D3DSCache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:LOCALAPPDATA\NVIDIA\DXCache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path "$env:LOCALAPPDATA\AMD\DxCache\*" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Log "GPU Shader Cache cleared."
})

# RESTORE ACTIONS
$window.FindName("BtnRestoreAll").Add_Click({
    Write-Log "WARNING: Restoring ALL Settings to Default..."
    # Reset CPU
    Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\PriorityControl" -Name "Win32PrioritySeparation" -Value 2 -Type DWord -Force
    powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 5
    powercfg -setactive scheme_current
    # Reset Input
    Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name "MouseSpeed" -Value "1" -Force
    # Reset Network
    netsh int tcp set global autotuninglevel=normal | Out-Null
    netsh int tcp set global dca=default | Out-Null
    # Reset Timer
    bcdedit /deletevalue disabledynamictick | Out-Null
    
    Write-Log "All settings have been reverted to defaults!"
    Update-Status
})
$window.FindName("BtnRestorePoint").Add_Click({
    Write-Log "Creating System Restore Point..."
    try {
        Enable-ComputerRestore -Drive "C:\" -ErrorAction SilentlyContinue
        Checkpoint-Computer -Description "lnwzamak Firstx Backup" -RestorePointType "MODIFY_SETTINGS" -ErrorAction Stop
        Write-Log "System Restore Point Created Successfully."
    } catch {
        Write-Log "Failed to create Restore Point. Ensure System Restore is enabled."
    }
})

# Load Images if they exist
$scriptDir = $PSScriptRoot
$avatarPath = Join-Path $scriptDir "IMG_8806.jpeg"
if (Test-Path $avatarPath) {
    try {
        $media = New-Object System.Windows.Controls.MediaElement
        $media.Source = New-Object Uri($avatarPath)
        $media.LoadedBehavior = [System.Windows.Controls.MediaState]::Play
        $media.UnloadedBehavior = [System.Windows.Controls.MediaState]::Close
        $media.Stretch = "UniformToFill"
        $media.Add_MediaEnded({
            $media.Position = New-Object TimeSpan(0,0,0)
            $media.Play()
        })
        $brush = New-Object System.Windows.Media.VisualBrush($media)
        $brush.Stretch = "UniformToFill"
        $window.FindName("ProfileImage").Fill = $brush
    } catch {}
}

$bannerPath = Join-Path $scriptDir "black-background-image-03.jpg"
if (Test-Path $bannerPath) {
    try {
        $img = New-Object System.Windows.Media.Imaging.BitmapImage(New-Object Uri($bannerPath))
        $brush = New-Object System.Windows.Media.ImageBrush($img)
        $brush.Stretch = "UniformToFill"
        $window.FindName("BannerImage").Background = $brush
    } catch {}
}

$sidebarPath = Join-Path $scriptDir "A890308A-315F-4E75-8E94-EE317E9CD29F.gif"
if (Test-Path $sidebarPath) {
    try {
        $media = New-Object System.Windows.Controls.MediaElement
        $media.Source = New-Object Uri($sidebarPath)
        $media.LoadedBehavior = [System.Windows.Controls.MediaState]::Play
        $media.UnloadedBehavior = [System.Windows.Controls.MediaState]::Play
        $media.Stretch = "UniformToFill"
        $media.Add_MediaEnded({
            $media.Position = New-Object TimeSpan(0,0,0)
            $media.Play()
        })
        $brush = New-Object System.Windows.Media.VisualBrush($media)
        $brush.Stretch = "UniformToFill"
        $window.FindName("SidebarImage").Background = $brush
        $window.FindName("SidebarPlaceholderText").Visibility = "Collapsed"
    } catch {}
}
# Window Controls
$window.FindName("BtnMinimize").Add_Click({ $window.WindowState = 'Minimized' })
$window.FindName("BtnClose").Add_Click({ $window.Close() })
$window.FindName("TitleBar").Add_MouseLeftButtonDown({ $window.DragMove() })

# Show Window
$window.ShowDialog() | Out-Null

