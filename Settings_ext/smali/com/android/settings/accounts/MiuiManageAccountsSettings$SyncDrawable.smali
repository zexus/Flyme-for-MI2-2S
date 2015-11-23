.class Lcom/android/settings/accounts/MiuiManageAccountsSettings$SyncDrawable;
.super Lcom/android/settings/dg;
.source "MiuiManageAccountsSettings.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 328
    const v0, 0x7f02000d

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dg;-><init>(Landroid/content/Context;I)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/accounts/MiuiManageAccountsSettings$SyncDrawable;->es()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 332
    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 333
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 334
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 3

    .prologue
    .line 338
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 339
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 340
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 341
    return-object v0
.end method
