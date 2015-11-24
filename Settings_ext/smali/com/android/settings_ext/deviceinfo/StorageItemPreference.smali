.class public Lcom/android/settings_ext/deviceinfo/StorageItemPreference;
.super Landroid/preference/Preference;
.source "StorageItemPreference.java"


# instance fields
.field public final color:I

.field public final userHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;II)V
    .locals 2

    .prologue
    .line 41
    const/4 v0, 0x0

    const v1, 0x101008d

    invoke-direct {p0, p1, v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    if-eqz p3, :cond_0

    .line 46
    iput p3, p0, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->color:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    const v0, 0x7f0903fe

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->setSummary(I)V

    .line 60
    iput p4, p0, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->userHandle:I

    .line 61
    return-void

    .line 54
    :cond_0
    const v0, -0xff01

    iput v0, p0, Lcom/android/settings_ext/deviceinfo/StorageItemPreference;->color:I

    goto :goto_0
.end method
