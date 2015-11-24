.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;
.super Ljava/lang/Object;
.source "InstalledAppDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 858
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-static {v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Z)V

    .line 861
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Ljava/lang/String;)V

    .line 864
    :cond_0
    return-void
.end method
