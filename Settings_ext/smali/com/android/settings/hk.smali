.class public Lcom/android/settings_ext/hk;
.super Ljava/lang/Object;
.source "UserSpinnerAdapter.java"


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final name:Ljava/lang/String;

.field private final zA:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings_ext/hk;->zA:Landroid/os/UserHandle;

    .line 51
    iget-object v0, p0, Lcom/android/settings_ext/hk;->zA:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const v0, 0x7f090a13

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/hk;->name:Ljava/lang/String;

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108035a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/hk;->icon:Landroid/graphics/drawable/Drawable;

    .line 65
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v1, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ext/hk;->name:Ljava/lang/String;

    .line 58
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/settings_ext/hk;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 62
    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/hk;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/hk;)Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/hk;->zA:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/hk;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/hk;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/hk;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ext/hk;->name:Ljava/lang/String;

    return-object v0
.end method
