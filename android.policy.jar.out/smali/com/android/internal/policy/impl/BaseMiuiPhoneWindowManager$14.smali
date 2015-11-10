.class Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$14;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager$14;->this$0:Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;

    # invokes: Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->triggerSnapService()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;->access$2700(Lcom/android/internal/policy/impl/BaseMiuiPhoneWindowManager;)V

    .line 1648
    return-void
.end method
