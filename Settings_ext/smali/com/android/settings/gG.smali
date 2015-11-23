.class public final Lcom/android/settings/gG;
.super Ljava/lang/Object;
.source "TrustAgentSettings.java"


# instance fields
.field public icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field yA:Landroid/content/ComponentName;

.field yB:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 52
    instance-of v0, p1, Lcom/android/settings/gG;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/gG;->yA:Landroid/content/ComponentName;

    check-cast p1, Lcom/android/settings/gG;

    iget-object v1, p1, Lcom/android/settings/gG;->yA:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
