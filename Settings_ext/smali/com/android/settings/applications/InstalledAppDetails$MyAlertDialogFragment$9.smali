.class Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$9;
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
    .line 1262
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$9;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$9;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment$9;->Gg:Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/InstalledAppDetails$MyAlertDialogFragment;->jj()Lcom/android/settings_ext/applications/InstalledAppDetails;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/applications/InstalledAppDetails;->a(Lcom/android/settings_ext/applications/InstalledAppDetails;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/applications/InstalledAppDetails;->a(Lcom/android/settings_ext/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V

    .line 1267
    return-void
.end method
