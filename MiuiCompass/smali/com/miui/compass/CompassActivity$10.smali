.class Lcom/miui/compass/CompassActivity$10;
.super Ljava/lang/Object;
.source "CompassActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/compass/CompassActivity;->showFirstUsingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/compass/CompassActivity;


# direct methods
.method constructor <init>(Lcom/miui/compass/CompassActivity;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/miui/compass/CompassActivity$10;->this$0:Lcom/miui/compass/CompassActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 600
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$10;->this$0:Lcom/miui/compass/CompassActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/compass/CompassPreferences;->saveShowFirtUsingAlert(Landroid/content/Context;Z)V

    .line 601
    iget-object v0, p0, Lcom/miui/compass/CompassActivity$10;->this$0:Lcom/miui/compass/CompassActivity;

    # invokes: Lcom/miui/compass/CompassActivity;->startCompass()V
    invoke-static {v0}, Lcom/miui/compass/CompassActivity;->access$1600(Lcom/miui/compass/CompassActivity;)V

    .line 602
    return-void
.end method
