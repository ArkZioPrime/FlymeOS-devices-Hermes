.class public Landroid/os/BatteryProperties;
.super Ljava/lang/Object;
.source "BatteryProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BatteryProperties;",
            ">;"
        }
    .end annotation
.end field

.field private static final MTK_HEALTHD:Z


# instance fields
.field public batteryHealth:I

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public chargerAcOnline:Z

.field public chargerDockAcOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public dockBatteryHealth:I

.field public dockBatteryLevel:I

.field public dockBatteryPresent:Z

.field public dockBatteryStatus:I

.field public dockBatterySupported:Z

.field public dockBatteryTechnology:Ljava/lang/String;

.field public dockBatteryTemperature:I

.field public dockBatteryVoltage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/io/File;

    const-string v1, "/factory_init.rc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/meta_init.rc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/_have_mtk_healthd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    .line 175
    new-instance v0, Landroid/os/BatteryProperties$1;

    invoke-direct {v0}, Landroid/os/BatteryProperties$1;-><init>()V

    sput-object v0, Landroid/os/BatteryProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 52
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 93
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 97
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 100
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 103
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 108
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_4

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 110
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 112
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_9

    move v0, v2

    :goto_4
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    .line 113
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    if-eqz v0, :cond_d

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_c

    :goto_6
    iput-boolean v1, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    .line 132
    :goto_7
    return-void

    :cond_5
    move v0, v2

    .line 89
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 90
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 91
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 96
    goto/16 :goto_3

    .line 112
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v2

    .line 114
    goto :goto_5

    :cond_c
    move v1, v2

    .line 117
    goto :goto_6

    .line 123
    :cond_d
    iput-boolean v2, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    .line 124
    iput v1, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    .line 125
    iput v1, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    .line 126
    iput-boolean v2, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    .line 127
    iput v2, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    .line 128
    iput v2, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    .line 129
    iput v2, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    .line 130
    const-string v0, ""

    iput-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    goto :goto_7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/BatteryProperties$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/BatteryProperties$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/os/BatteryProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public set(Landroid/os/BatteryProperties;)V
    .locals 1
    .param p1, "other"    # Landroid/os/BatteryProperties;

    .prologue
    .line 61
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    .line 62
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    .line 63
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    .line 64
    iget v0, p1, Landroid/os/BatteryProperties;->batteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    .line 65
    iget v0, p1, Landroid/os/BatteryProperties;->batteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    .line 66
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    .line 67
    iget v0, p1, Landroid/os/BatteryProperties;->batteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    .line 68
    iget v0, p1, Landroid/os/BatteryProperties;->batteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    .line 69
    iget v0, p1, Landroid/os/BatteryProperties;->batteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    .line 70
    iget-object v0, p1, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    .line 72
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    .line 73
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    .line 74
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    .line 75
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    .line 76
    iget-boolean v0, p1, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    iput-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    .line 77
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    .line 78
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    .line 79
    iget v0, p1, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    iput v0, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    .line 80
    iget-object v0, p1, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/os/BatteryProperties;->batteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    :cond_0
    iget v0, p0, Landroid/os/BatteryProperties;->batteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->batteryPresent:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    :cond_1
    iget v0, p0, Landroid/os/BatteryProperties;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_2

    .line 147
    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :cond_2
    iget v0, p0, Landroid/os/BatteryProperties;->batteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    :cond_3
    iget v0, p0, Landroid/os/BatteryProperties;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_4

    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    :cond_4
    iget-object v0, p0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    sget-boolean v0, Landroid/os/BatteryProperties;->MTK_HEALTHD:Z

    if-eqz v0, :cond_a

    .line 173
    :cond_5
    :goto_4
    return-void

    :cond_6
    move v0, v2

    .line 135
    goto :goto_0

    :cond_7
    move v0, v2

    .line 136
    goto :goto_1

    :cond_8
    move v0, v2

    .line 137
    goto :goto_2

    :cond_9
    move v0, v2

    .line 142
    goto :goto_3

    .line 162
    :cond_a
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatterySupported:Z

    if-eqz v0, :cond_5

    .line 164
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->chargerDockAcOnline:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-boolean v0, p0, Landroid/os/BatteryProperties;->dockBatteryPresent:Z

    if-eqz v0, :cond_d

    :goto_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryVoltage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/os/BatteryProperties;->dockBatteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object v0, p0, Landroid/os/BatteryProperties;->dockBatteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move v0, v2

    .line 162
    goto :goto_5

    :cond_c
    move v0, v2

    .line 164
    goto :goto_6

    :cond_d
    move v1, v2

    .line 167
    goto :goto_7
.end method
