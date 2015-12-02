.class Lcom/android/camera/ActivityBase$3;
.super Ljava/lang/Object;
.source "ActivityBase.java"

# interfaces
.implements Lcom/android/camera/CameraScreenNail$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ActivityBase;->createCameraScreenNail(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateSwitchCameraAfter()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->animateSwitchCameraAfter()V

    .line 309
    return-void
.end method

.method public isKeptBitmapTexture()Z
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->isKeptBitmapTexture()Z

    move-result v0

    return v0
.end method

.method public onPreviewTextureCopied()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->onPreviewTextureCopied()V

    .line 299
    return-void
.end method

.method public onSwitchAnimationDone()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->onSwitchAnimationDone()V

    .line 294
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 288
    iget-object v0, p0, Lcom/android/camera/ActivityBase$3;->this$0:Lcom/android/camera/ActivityBase;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->requestRender()V

    .line 289
    return-void
.end method
