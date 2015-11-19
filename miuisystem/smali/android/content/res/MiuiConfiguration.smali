.class public Landroid/content/res/MiuiConfiguration;
.super Ljava/lang/Object;
.source "MiuiConfiguration.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/res/MiuiConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static BASE_RESTART_FLAG:J = 0x0L

.field public static final CONTACTS_PKG_NAME:Ljava/lang/String; = "com.android.contacts"

.field public static final LAUNCHER_PKG_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final MMS_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field public static final SYSTEMUI_PKG_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_INTEREST_CHANGE_FLAG:J = 0x10007899L

.field public static final THEME_FLAG_ALARM:J = 0x400L

.field public static final THEME_FLAG_ALARMSTYLE:J = 0x100000L

.field public static final THEME_FLAG_AUDIO_EFFECT:J = 0x8000L

.field public static final THEME_FLAG_BOOT_ANIMATION:J = 0x20L

.field public static final THEME_FLAG_BOOT_AUDIO:J = 0x40L

.field public static final THEME_FLAG_CLOCK:J = 0x10000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_CLOCK_1x2:J = 0x800000L

.field public static final THEME_FLAG_CLOCK_2x2:J = 0x1000000L

.field public static final THEME_FLAG_CLOCK_2x4:J = 0x2000000L

.field public static final THEME_FLAG_CONTACT:J = 0x800L

.field public static final THEME_FLAG_FONT:J = 0x10L

.field public static final THEME_FLAG_FRAMEWORK:J = 0x1L

.field public static final THEME_FLAG_FREE_HOME:J = 0x400000L

.field public static final THEME_FLAG_FREE_HOME_DEPRECATED:J = 0x200000L

.field public static final THEME_FLAG_ICON:J = 0x8L

.field public static final THEME_FLAG_LAST:J = 0x8000000L

.field public static final THEME_FLAG_LAUNCHER:J = 0x4000L

.field public static final THEME_FLAG_LOCKSCREEN:J = 0x4L

.field public static final THEME_FLAG_LOCKSTYLE:J = 0x1000L

.field public static final THEME_FLAG_MIWALLPAPER:J = 0x80000L

.field public static final THEME_FLAG_MMS:J = 0x80L

.field public static final THEME_FLAG_NOTIFICATION:J = 0x200L

.field public static final THEME_FLAG_PHOTO_FRAME:J = 0x20000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final THEME_FLAG_PHOTO_FRAME_2x2:J = 0x4000000L

.field public static final THEME_FLAG_PHOTO_FRAME_2x4:J = 0x8000000L

.field public static final THEME_FLAG_PHOTO_FRAME_4x4:J = 0x40000L

.field public static final THEME_FLAG_RINGTONE:J = 0x100L

.field public static final THEME_FLAG_STATUSBAR:J = 0x2000L

.field public static final THEME_FLAG_THIRD_APP:J = 0x10000000L

.field public static final THEME_FLAG_WALLPAPER:J = 0x2L

.field public static final THEME_FONT_FLAGS:J = 0x10L

.field public static final UI_MODE_TYPE_SCALE_GODZILLA:I = 0xb

.field public static final UI_MODE_TYPE_SCALE_HUGE:I = 0xf

.field public static final UI_MODE_TYPE_SCALE_LARGE:I = 0xe

.field public static final UI_MODE_TYPE_SCALE_MEDIUM:I = 0xd

.field public static final UI_MODE_TYPE_SCALE_SMALL:I = 0xc

.field private static sForceScreenLayoutSize:I

.field private static sHadReadForceScreenLayoutSize:Z


# instance fields
.field private lastFontThemeChanged:I

.field public themeChanged:I

.field public themeChangedFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 182
    const-wide/16 v0, 0x19

    sput-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    .line 235
    const/4 v0, -0x1

    sput v0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static getFontScale(I)F
    .locals 2
    .param p0, "fontUiMode"    # I

    .prologue
    const v1, 0x3fb33333    # 1.4f

    .line 255
    packed-switch p0, :pswitch_data_0

    .line 267
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    .line 257
    :pswitch_0
    const-string v0, "smallui_font_scale"

    const v1, 0x3f5c28f6    # 0.86f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 259
    :pswitch_1
    const-string v0, "mediumui_font_scale"

    const v1, 0x3f933333    # 1.15f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 261
    :pswitch_2
    const-string v0, "largeui_font_scale"

    const v1, 0x3fa8f5c3    # 1.32f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 263
    :pswitch_3
    const-string v0, "hugeui_font_scale"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 265
    :pswitch_4
    const-string v0, "godzillaui_font_scale"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getScaleMode()I
    .locals 3

    .prologue
    .line 212
    const/4 v1, 0x1

    .line 214
    .local v1, "scale":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 215
    .local v0, "config":Landroid/content/res/Configuration;
    if-eqz v0, :cond_0

    .line 216
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v2, 0xf

    .line 217
    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 227
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static needNewResources(I)Z
    .locals 1
    .param p0, "configChanges"    # I

    .prologue
    .line 108
    const/high16 v0, -0x80000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestart3rdApp(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .prologue
    .line 197
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartActivity(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "themeChangeFlags"    # J

    .prologue
    .line 168
    if-eqz p0, :cond_2

    .line 169
    const-string v0, "com.miui.home"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartLauncher(J)Z

    move-result v0

    .line 179
    :goto_0
    return v0

    .line 172
    :cond_0
    const-string v0, "com.android.mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartMms(J)Z

    move-result v0

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, "com.android.contacts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestartContacts(J)Z

    move-result v0

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {p1, p2}, Landroid/content/res/MiuiConfiguration;->needRestart3rdApp(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static needRestartContacts(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .prologue
    .line 193
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartLauncher(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .prologue
    .line 185
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartMms(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .prologue
    .line 189
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static needRestartStatusBar(J)Z
    .locals 4
    .param p0, "themeChangeFlags"    # J

    .prologue
    .line 201
    sget-wide v0, Landroid/content/res/MiuiConfiguration;->BASE_RESTART_FLAG:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resetScreenLayoutSize(I)I
    .locals 5
    .param p0, "defaultScreenLayoutSize"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 237
    sget-boolean v3, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    if-nez v3, :cond_0

    .line 238
    sput-boolean v1, Landroid/content/res/MiuiConfiguration;->sHadReadForceScreenLayoutSize:Z

    .line 239
    const-string v3, "ro.miui.screen_layout_size"

    const-string v4, ""

    invoke-static {v3, v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "forceScreenLayoutSizeConfig":Ljava/lang/String;
    const-string v3, "small"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    sput v1, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    .line 246
    .end local v0    # "forceScreenLayoutSizeConfig":Ljava/lang/String;
    :cond_0
    sget v1, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    if-ne v1, v2, :cond_5

    .end local p0    # "defaultScreenLayoutSize":I
    :goto_1
    return p0

    .line 240
    .restart local v0    # "forceScreenLayoutSizeConfig":Ljava/lang/String;
    .restart local p0    # "defaultScreenLayoutSize":I
    :cond_1
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "xlarge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 246
    .end local v0    # "forceScreenLayoutSizeConfig":Ljava/lang/String;
    :cond_5
    sget p0, Landroid/content/res/MiuiConfiguration;->sForceScreenLayoutSize:I

    goto :goto_1
.end method

.method public static sendThemeConfigurationChangeMsg(J)V
    .locals 4
    .param p0, "changeFlag"    # J

    .prologue
    .line 151
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 153
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 154
    .local v0, "curConfig":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    invoke-virtual {v2, p0, p1}, Landroid/content/res/MiuiConfiguration;->updateTheme(J)V

    .line 155
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "curConfig":Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkFontChange(I)Z
    .locals 1
    .param p1, "sinceThemeChanged"    # I

    .prologue
    .line 147
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Landroid/content/res/MiuiConfiguration;)I
    .locals 3
    .param p1, "that"    # Landroid/content/res/MiuiConfiguration;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "n":I
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sub-int v0, v1, v2

    .line 127
    if-eqz v0, :cond_0

    .line 130
    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Landroid/content/res/MiuiConfiguration;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/res/MiuiConfiguration;->compareTo(Landroid/content/res/MiuiConfiguration;)I

    move-result v0

    return v0
.end method

.method public diff(Landroid/content/res/MiuiConfiguration;)I
    .locals 3
    .param p1, "delta"    # Landroid/content/res/MiuiConfiguration;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "changed":I
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 102
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 104
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 135
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget-wide v2, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 121
    return-void
.end method

.method public setTo(Landroid/content/res/MiuiConfiguration;)V
    .locals 2
    .param p1, "o"    # Landroid/content/res/MiuiConfiguration;

    .prologue
    .line 67
    iget v0, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 68
    iget-wide v0, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 69
    iget v0, p1, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 70
    return-void
.end method

.method public setToDefaults()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    iput v2, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 85
    iput v2, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " themeChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, " themeChangedFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-wide v2, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/MiuiConfiguration;)I
    .locals 4
    .param p1, "delta"    # Landroid/content/res/MiuiConfiguration;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "changed":I
    iget v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iget v2, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    if-ge v1, v2, :cond_0

    .line 91
    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    .line 92
    iget v1, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 93
    iget-wide v2, p1, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    iput-wide v2, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 94
    iget v1, p1, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    iput v1, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 96
    :cond_0
    return v0
.end method

.method public updateTheme(J)V
    .locals 5
    .param p1, "changedFlags"    # J

    .prologue
    .line 139
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 140
    iput-wide p1, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    .line 141
    iget-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 142
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    iput v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    .line 144
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 112
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/content/res/MiuiConfiguration;->lastFontThemeChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget-wide v0, p0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    return-void
.end method
