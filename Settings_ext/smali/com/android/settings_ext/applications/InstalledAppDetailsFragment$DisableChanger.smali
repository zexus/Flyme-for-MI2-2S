.class Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;
.super Landroid/os/AsyncTask;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field final Df:Landroid/content/pm/ApplicationInfo;

.field final Gf:Ljava/lang/ref/WeakReference;

.field final i:Landroid/content/pm/PackageManager;

.field final mState:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;Landroid/content/pm/ApplicationInfo;I)V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 513
    invoke-static {p1}, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;->d(Lcom/android/settings_ext/applications/InstalledAppDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->i:Landroid/content/pm/PackageManager;

    .line 514
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->Gf:Ljava/lang/ref/WeakReference;

    .line 515
    iput-object p2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->Df:Landroid/content/pm/ApplicationInfo;

    .line 516
    iput p3, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->mState:I

    .line 517
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->i:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->Df:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ext/applications/InstalledAppDetailsFragment$DisableChanger;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 522
    const/4 v0, 0x0

    return-object v0
.end method