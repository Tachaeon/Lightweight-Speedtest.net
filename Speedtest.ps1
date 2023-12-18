[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
$ProgressPreference = 'SilentlyContinue'

#Custom Icon
$IconBase64 = "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"
$IconBytes = [Convert]::FromBase64String($IconBase64)
$ims = New-Object IO.MemoryStream($IconBytes, 0, $IconBytes.Length)
$ims.Write($IconBytes, 0, $IconBytes.Length)

# Create form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Speedtest.net"
$form.Width = 415
$form.Height = 280
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedSingle
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen
$form.MaximizeBox = $false  # Disable maximize button
$Form.Icon = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $ims).GetHIcon())
$form.TopMost = $true

$container1 = New-Object System.Windows.Forms.GroupBox
$container1.Text = "Results:"
$container1.Width = 380
$container1.Height = 125
$container1.Location = New-Object System.Drawing.Point(10, 10)

$label1 = New-Object System.Windows.Forms.Label
$label1.Text = "Download:"
$label1.Location = New-Object System.Drawing.Point(10, 20)
$label1.Height = 15
$label1.Width = 70

$label2 = New-Object System.Windows.Forms.Label
$label2.Text = "Upload:"
$label2.Location = New-Object System.Drawing.Point(10, 39)
$label2.Height = 15
$label2.Width = 70

$label3 = New-Object System.Windows.Forms.Label
$label3.Text = "Packet Loss:"
$label3.Location = New-Object System.Drawing.Point(10, 58)
$label3.Height = 15
$label3.Width = 70

$label4 = New-Object System.Windows.Forms.Label
$label4.Text = "Jitter:"
$label4.Location = New-Object System.Drawing.Point(10, 77)
$label4.Height = 15
$label4.Width = 70

$label5 = New-Object System.Windows.Forms.Label
$label5.Text = ""
$label5.Location = New-Object System.Drawing.Point(80, 20)
$label5.Height = 15
$label5.Width = 50

$label6 = New-Object System.Windows.Forms.Label
$label6.Text = ""
$label6.Location = New-Object System.Drawing.Point(80, 39)
$label6.Height = 15
$label6.Width = 50

$label7 = New-Object System.Windows.Forms.Label
$label7.Text = ""
$label7.Location = New-Object System.Drawing.Point(80, 58)
$label7.Height = 15
$label7.Width = 30

$label8 = New-Object System.Windows.Forms.Label
$label8.Text = ""
$label8.Location = New-Object System.Drawing.Point(80, 77)
$label8.Height = 15
$label8.Width = 50

$label9 = New-Object System.Windows.Forms.Label
$label9.Text = "External IP:"
$label9.Location = New-Object System.Drawing.Point(130, 20)
$label9.Height = 15
$label9.Width = 70

$label10 = New-Object System.Windows.Forms.Label
$label10.Text = "Internal IP:"
$label10.Location = New-Object System.Drawing.Point(130, 39)
$label10.Height = 15
$label10.Width = 70

$label11 = New-Object System.Windows.Forms.Label
$label11.Text = "Server Used:"
$label11.Location = New-Object System.Drawing.Point(130, 58)
$label11.Height = 15
$label11.Width = 80

$label12 = New-Object System.Windows.Forms.Label
$label12.Text = "ISP:"
$label12.Location = New-Object System.Drawing.Point(130, 77)
$label12.Height = 15
$label12.Width = 80

$label13 = New-Object System.Windows.Forms.Label
$label13.Text = ""
$label13.Location = New-Object System.Drawing.Point(210, 20)
$label13.Height = 15

$label14 = New-Object System.Windows.Forms.Label
$label14.Text = ""
$label14.Location = New-Object System.Drawing.Point(210, 39)
$label14.Height = 15

$label15 = New-Object System.Windows.Forms.Label
$label15.Text = ""
$label15.Location = New-Object System.Drawing.Point(210, 58)
$label15.Height = 15
$label15.Width = 150

$label16 = New-Object System.Windows.Forms.Label
$label16.Text = ""
$label16.Location = New-Object System.Drawing.Point(210, 77)
$label16.Height = 15
$label16.Width = 80

$label17 = New-Object System.Windows.Forms.Label
$label17.Text = "Latency:"
$label17.Location = New-Object System.Drawing.Point(10, 96)
$label17.Height = 15
$label17.Width = 70

$label18 = New-Object System.Windows.Forms.Label
$label18.Text = ""
$label18.Location = New-Object System.Drawing.Point(80, 96)
$label18.Height = 15
$label18.Width = 30

$container1.Controls.Add($label1)
$container1.Controls.Add($label2)
$container1.Controls.Add($label3)
$container1.Controls.Add($label4)
$container1.Controls.Add($label5)
$container1.Controls.Add($label6)
$container1.Controls.Add($label7)
$container1.Controls.Add($label8)
$container1.Controls.Add($label9)
$container1.Controls.Add($label10)
$container1.Controls.Add($label11)
$container1.Controls.Add($label12)
$container1.Controls.Add($label13)
$container1.Controls.Add($label14)
$container1.Controls.Add($label15)
$container1.Controls.Add($label16)
$container1.Controls.Add($label17)
$container1.Controls.Add($label18)

$container2 = New-Object System.Windows.Forms.GroupBox
$container2.Text = "Speed Test URL:"
$container2.Width = 380
$container2.Height = 52
$container2.Location = New-Object System.Drawing.Point(10, 140)

$textbox1 = New-Object System.Windows.Forms.TextBox
$textbox1.Location = New-Object System.Drawing.Point(10, 45)
$textbox1.Multiline = $true
$textbox1.Anchor = 'Top, Left, Right, Bottom'
$textbox1.Dock = 'Fill'
$textbox1.Enabled = $false
$textbox1.Add_TextChanged({ validateBoxes })
$textbox1.Text = ""

function validateboxes() {
    if ($textbox1.Text) {
        $browserbttn.Enabled = $true
    }
    else {
        $browserbttn.Enabled = $false
    }
}

$container2.Controls.Add($textbox1)

$buttonOK = New-Object System.Windows.Forms.Button
$buttonOK.Text = "Run Test"
$buttonOK.Width = 150
$buttonOK.Height = 36
$buttonOK.Location = New-Object System.Drawing.Point(32, 200)
$buttonOK.Add_Click({
        $buttonOK.Enabled = $false
        $form.Cursor = [System.Windows.Forms.Cursors]::WaitCursor
        runthingy
    })

$browserbttn = New-Object System.Windows.Forms.Button
$browserbttn.Text = "Open URL in Browser"
$browserbttn.Location = New-Object System.Drawing.Point(217, 200)
$browserbttn.Width = 150
$browserbttn.Height = 36
$browserbttn.Enabled = $false
$browserbttn.Add_Click({
        $ResultURL = $textbox1.Text
        Start-Process $ResultURL        
    })

$form.Controls.Add($buttonOK)
$form.Controls.Add($browserbttn)

$form.Controls.Add($container1)
$form.Controls.Add($container2)

function runthingy {
    #Internet Speed Test
    $Exist = Get-Item "$env:TEMP\speedtest.exe" -ErrorAction SilentlyContinue
    if (!($Exist)) {
        #Download File Settings
        $SpeedTestInstaller = "SpeedTest.zip"
        $WebClient = New-Object System.Net.WebClient 
        $URL = 'https://install.speedtest.net/app/cli/ookla-speedtest-1.2.0-win64.zip'
        $File = "$env:TEMP\$SpeedTestInstaller" 
    
        #Download File
        $WebClient.DownloadFile($URL, $File)
    
        #Unzip File
        Expand-Archive -Path $File -DestinationPath $env:TEMP -ErrorAction SilentlyContinue
    }
    else {
        $Speedtest = & "$env:TEMP\speedtest.exe" --format=json --accept-license --accept-gdpr
        $Speedtest | Out-File "$env:TEMP\Last.txt" -Force
        $Speedtest = $Speedtest | ConvertFrom-Json
     
        [PSCustomObject]$SpeedObject = @{
            DownloadSpeed = [math]::Round($Speedtest.download.bandwidth / 1000000 * 8, 2)
            UploadSpeed   = [math]::Round($Speedtest.upload.bandwidth / 1000000 * 8, 2)
            PacketLoss    = [math]::Round($Speedtest.packetLoss)
            ISP           = $Speedtest.isp
            ExternalIP    = $Speedtest.interface.externalIp
            InternalIP    = $Speedtest.interface.internalIp
            UsedServer    = $Speedtest.server.host
            URL           = $Speedtest.result.url
            Jitter        = [math]::Round($Speedtest.ping.jitter)
            Latency       = [math]::Round($Speedtest.ping.latency)
        }
    
        $Downloadspeed = $SpeedObject.DownloadSpeed
        $Uploadspeed = $SpeedObject.UploadSpeed
        $PacketLoss = $SpeedObject.PacketLoss
        $ISP = $SpeedObject.isp
        $ExternalIP = $SpeedObject.ExternalIP
        $InternalIP = $SpeedObject.InternalIP
        $UsedServer = $SpeedObject.UsedServer
        $URL = $SpeedObject.URL
        $Jitter = $SpeedObject.Jitter
        $Latency = $SpeedObject.Latency
    
        #Write to labels
        $label5.Text = $Downloadspeed
        $label6.Text = $Uploadspeed
        $label7.Text = $PacketLoss
        $label16.Text = $ISP
        $label13.Text = $ExternalIP
        $label14.Text = $InternalIP
        $label15.Text = $UsedServer
        $textbox1.Text = $URL
        $label8.Text = $Jitter
        $LatencyMS = "$Latency" + "ms"
        $label18.Text = $LatencyMS
    
        #Enable Button
        $buttonOK.Enabled = $true
        $form.Cursor = [System.Windows.Forms.Cursors]::Default
    }
}

# Show the form
$form.Add_Shown({ $form.Activate() })
$form.ShowDialog()