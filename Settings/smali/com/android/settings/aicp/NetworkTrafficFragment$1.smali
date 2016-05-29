.class Lcom/android/settings/aicp/NetworkTrafficFragment$1;
.super Ljava/lang/Object;
.source "NetworkTrafficFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/aicp/NetworkTrafficFragment;->resetToDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/aicp/NetworkTrafficFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/aicp/NetworkTrafficFragment;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/settings/aicp/NetworkTrafficFragment$1;->this$0:Lcom/android/settings/aicp/NetworkTrafficFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/aicp/NetworkTrafficFragment$1;->this$0:Lcom/android/settings/aicp/NetworkTrafficFragment;

    # invokes: Lcom/android/settings/aicp/NetworkTrafficFragment;->NetworkTrafficColorReset()V
    invoke-static {v0}, Lcom/android/settings/aicp/NetworkTrafficFragment;->access$000(Lcom/android/settings/aicp/NetworkTrafficFragment;)V

    .line 167
    return-void
.end method
