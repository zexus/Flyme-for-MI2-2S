.class public Lcom/android/settings_ext/SetFullBackupPassword;
.super Landroid/app/Activity;
.source "SetFullBackupPassword.java"


# instance fields
.field hB:Landroid/app/backup/IBackupManager;

.field wD:Landroid/widget/TextView;

.field wE:Landroid/widget/TextView;

.field wF:Landroid/widget/TextView;

.field wG:Landroid/widget/Button;

.field wH:Landroid/widget/Button;

.field wI:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    new-instance v0, Lcom/android/settings_ext/gg;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/gg;-><init>(Lcom/android/settings_ext/SetFullBackupPassword;)V

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wI:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/SetFullBackupPassword;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->hB:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1, p2}, Landroid/app/backup/IBackupManager;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 103
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Unable to communicate with backup manager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->hB:Landroid/app/backup/IBackupManager;

    .line 85
    const v0, 0x7f0400f9

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SetFullBackupPassword;->setContentView(I)V

    .line 87
    const v0, 0x7f10027a

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wD:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f10027c

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wE:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f10027e

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wF:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f10027f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wG:Landroid/widget/Button;

    .line 92
    const v0, 0x7f100280

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/SetFullBackupPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wH:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wG:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wI:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wH:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ext/SetFullBackupPassword;->wI:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method
