.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;
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
    .line 772
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 775
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;->GG:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;ZZ)V

    .line 776
    return-void
.end method
