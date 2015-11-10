.class public Lmiui/app/backup/FullBackupProxy;
.super Ljava/lang/Object;
.source "FullBackupProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "linkdomain"    # Ljava/lang/String;
    .param p3, "rootpath"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    .line 12
    invoke-virtual {p5}, Landroid/app/backup/FullBackupDataOutput;->getData()Landroid/app/backup/BackupDataOutput;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/BackupDataOutput;)I

    move-result v0

    return v0
.end method
