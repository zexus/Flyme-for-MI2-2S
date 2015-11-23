.class Lcom/android/settings_ext/ai;
.super Landroid/os/Handler;
.source "ChooseLockPassword.java"


# instance fields
.field final synthetic di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings_ext/ai;->di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/android/settings_ext/ai;->di:Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/settings_ext/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 130
    :cond_0
    return-void
.end method
