.class public Lmiui/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mService:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lmiui/security/SecurityManager;->$assertionsDisabled:Z

    .line 265
    const-string v0, "sechook"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 266
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/security/ISecurityManager;)V
    .locals 0
    .param p1, "service"    # Lmiui/security/ISecurityManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    .line 25
    return-void
.end method

.method public static checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteList"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 32
    sget-boolean v11, Lmiui/security/SecurityManager;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 34
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 35
    .local v8, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "pkgs":[Ljava/lang/String;
    if-nez v7, :cond_2

    .line 44
    :cond_1
    :goto_0
    return v10

    .line 39
    :cond_2
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 40
    .local v6, "pkg":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v9, v1, v2

    .line 41
    .local v9, "validPkg":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    .line 40
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 39
    .end local v9    # "validPkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1
.end method

.method private static native hook()V
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 261
    invoke-static {}, Lmiui/security/SecurityManager;->hook()V

    .line 262
    return-void
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAccessControl(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 241
    .local v0, "checkIntent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 242
    const-string v1, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 246
    .end local v0    # "checkIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public checkAccessControl(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 11
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "thread"    # Landroid/app/IApplicationThread;
    .param p5, "token"    # Landroid/os/IBinder;
    .param p6, "id"    # Ljava/lang/String;

    .prologue
    .line 169
    if-eqz p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0, p3}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.app.action.CONFIRM_ACCESS_CONTROL"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v3, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v10}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 131
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 140
    :goto_0
    return v0

    .line 138
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCheckIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x2000000

    .line 193
    invoke-virtual {p0, p1}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-object v1

    .line 197
    :cond_1
    const/4 v0, 0x0

    .line 199
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 202
    :goto_1
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0, p2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    invoke-virtual {p0, p2}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.CHECK_ACCESS_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 217
    if-eqz p3, :cond_0

    .line 220
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    .line 221
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    :cond_3
    const/high16 v2, 0x1000000

    invoke-virtual {p3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    if-eqz p4, :cond_5

    .line 226
    if-ltz p5, :cond_4

    .line 227
    invoke-virtual {p3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 233
    :cond_4
    :goto_2
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 231
    :cond_5
    const/high16 v2, 0x10000000

    invoke-virtual {p3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 200
    .end local v1    # "result":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getPackageNameByPid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getWakeUpTime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 282
    :goto_0
    return-wide v2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public isAccessControlActived(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 293
    :goto_0
    return v0

    .line 290
    :catch_0
    move-exception v0

    .line 293
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 299
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 300
    :catch_0
    move-exception v0

    .line 303
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 162
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setWakeUpTime(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, v1, p2, p3}, Lmiui/security/ISecurityManager;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    .end local v1    # "pkgName":Ljava/lang/String;
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 94
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 2

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->stopInterceptSmsBySender()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 107
    :goto_0
    return v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    const/4 v1, 0x0

    goto :goto_0
.end method
