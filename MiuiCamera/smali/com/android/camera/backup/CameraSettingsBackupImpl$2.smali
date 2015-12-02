.class Lcom/android/camera/backup/CameraSettingsBackupImpl$2;
.super Ljava/lang/Object;
.source "CameraSettingsBackupImpl.java"

# interfaces
.implements Lcom/android/camera/backup/CameraSettingsBackupImpl$BackupRestoreHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/backup/CameraSettingsBackupImpl;->onRestoreSettings(Landroid/content/Context;Lmiui/cloud/backup/data/DataPackage;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/backup/CameraSettingsBackupImpl;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/backup/CameraSettingsBackupImpl$2;->this$0:Lcom/android/camera/backup/CameraSettingsBackupImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V
    .locals 0
    .param p1, "sharedPref"    # Landroid/content/SharedPreferences;
    .param p2, "dataPackage"    # Lmiui/cloud/backup/data/DataPackage;
    .param p3, "entries"    # [Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;

    .prologue
    .line 62
    invoke-static {p1, p2, p3}, Lmiui/cloud/backup/data/PrefsBackupHelper;->restore(Landroid/content/SharedPreferences;Lmiui/cloud/backup/data/DataPackage;[Lmiui/cloud/backup/data/PrefsBackupHelper$PrefEntry;)V

    .line 63
    return-void
.end method
