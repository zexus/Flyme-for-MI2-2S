.class public Lcom/android/camera/backup/CameraSettingsBackupService;
.super Lmiui/cloud/backup/CloudBackupServiceBase;
.source "CameraSettingsBackupService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lmiui/cloud/backup/CloudBackupServiceBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBackupImpl()Lmiui/cloud/backup/ICloudBackup;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/android/camera/backup/CameraSettingsBackupImpl;

    invoke-direct {v0}, Lcom/android/camera/backup/CameraSettingsBackupImpl;-><init>()V

    return-object v0
.end method
