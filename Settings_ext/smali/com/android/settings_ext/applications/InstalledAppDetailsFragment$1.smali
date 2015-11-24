.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;
.super Landroid/os/Handler;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final synthetic GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 188
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-static {v0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 194
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-static {v0}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Lcom/android/settings_ext/applications/ApplicationsState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-static {v1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/ApplicationsState;->ae(Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$1;->GE:Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;

    invoke-static {v0, p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->b(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Landroid/os/Message;)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
