.class Lcom/android/camera/module/PanoramaModule$7;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$7;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$7;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/PanoramaModule;->onCancelButtonClicked(Landroid/view/View;)V

    .line 745
    return-void
.end method
