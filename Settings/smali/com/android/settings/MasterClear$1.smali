.class Lcom/android/settings_ext/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/MasterClear;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/MasterClear;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ext/MasterClear$1;->this$0:Lcom/android/settings_ext/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/MasterClear$1;->this$0:Lcom/android/settings_ext/MasterClear;

    const/16 v1, 0x37

    # invokes: Lcom/android/settings_ext/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lcom/android/settings_ext/MasterClear;->access$000(Lcom/android/settings_ext/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings_ext/MasterClear$1;->this$0:Lcom/android/settings_ext/MasterClear;

    # invokes: Lcom/android/settings_ext/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lcom/android/settings_ext/MasterClear;->access$100(Lcom/android/settings_ext/MasterClear;)V

    .line 121
    :cond_0
    return-void
.end method
