.class Lcom/android/camera/ui/V6EffectSettingPage$1;
.super Ljava/lang/Object;
.source "V6EffectSettingPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6EffectSettingPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6EffectSettingPage;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6EffectSettingPage;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 255
    .local v6, "index":I
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->onBack()Z

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$400(Lcom/android/camera/ui/V6EffectSettingPage;)[Lcom/android/camera/ui/V6EffectSurfaceView;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 260
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$400(Lcom/android/camera/ui/V6EffectSettingPage;)[Lcom/android/camera/ui/V6EffectSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EffectSurfaceView;->setBackgroundResource(I)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # setter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v0, v6}, Lcom/android/camera/ui/V6EffectSettingPage;->access$302(Lcom/android/camera/ui/V6EffectSettingPage;I)I

    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mEffectSurfaceView:[Lcom/android/camera/ui/V6EffectSurfaceView;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$400(Lcom/android/camera/ui/V6EffectSettingPage;)[Lcom/android/camera/ui/V6EffectSurfaceView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v1

    aget-object v0, v0, v1

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EffectSurfaceView;->setBackgroundResource(I)V

    .line 264
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    iget-object v0, v0, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 266
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mActivity:Lcom/android/camera/ActivityBase;
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$500(Lcom/android/camera/ui/V6EffectSettingPage;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    iget-object v3, v3, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectSettingPage;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->onBack()Z

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    # getter for: Lcom/android/camera/ui/V6EffectSettingPage;->mSelectedIndex:I
    invoke-static {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->access$300(Lcom/android/camera/ui/V6EffectSettingPage;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 277
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectSettingPage$1;->this$0:Lcom/android/camera/ui/V6EffectSettingPage;

    iget-object v1, v1, Lcom/android/camera/ui/V6EffectSettingPage;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
