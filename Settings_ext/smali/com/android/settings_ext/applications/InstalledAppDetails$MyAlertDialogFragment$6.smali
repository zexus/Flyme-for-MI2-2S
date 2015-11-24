.class Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$6;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$6;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1231
    new-instance v1, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$6;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$6;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ext/applications/InstalledAppDetails;->a(Lcom/android/settings_ext/applications/InstalledAppDetails;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings_ext/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ext/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1234
    return-void
.end method
