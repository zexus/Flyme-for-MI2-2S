.class Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;
.super Ljava/lang/Object;
.source "V6PreviewPage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6PreviewPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAnimationListener"
.end annotation


# instance fields
.field private mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field final synthetic this$0:Lcom/android/camera/ui/V6PreviewPage;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6PreviewPage;Lcom/android/camera/ui/V6AbstractSettingPopup;)V
    .locals 0
    .param p2, "popup"    # Lcom/android/camera/ui/V6AbstractSettingPopup;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;->this$0:Lcom/android/camera/ui/V6PreviewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    .line 386
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPage$CustomAnimationListener;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setVisibility(I)V

    .line 396
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 399
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 389
    return-void
.end method
