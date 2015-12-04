.class Lcom/miui/fmradio/FmActivity$EditStationDialog$1;
.super Ljava/lang/Object;
.source "FmActivity.java"

# interfaces
.implements Lcom/miui/fmradio/StationEditDialog$EditStationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/fmradio/FmActivity$EditStationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmActivity$EditStationDialog;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmActivity$EditStationDialog;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmActivity$EditStationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationChanged(ILjava/lang/String;I)V
    .locals 2
    .param p1, "newFreq"    # I
    .param p2, "newLabel"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1160
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$EditStationDialog$1;->this$0:Lcom/miui/fmradio/FmActivity$EditStationDialog;

    invoke-virtual {v1}, Lcom/miui/fmradio/FmActivity$EditStationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1161
    .local v0, "a":Landroid/app/Activity;
    instance-of v1, v0, Lcom/miui/fmradio/FmActivity;

    if-eqz v1, :cond_0

    .line 1162
    check-cast v0, Lcom/miui/fmradio/FmActivity;

    .end local v0    # "a":Landroid/app/Activity;
    # invokes: Lcom/miui/fmradio/FmActivity;->saveStation(ILjava/lang/String;I)V
    invoke-static {v0, p1, p2, p3}, Lcom/miui/fmradio/FmActivity;->access$1700(Lcom/miui/fmradio/FmActivity;ILjava/lang/String;I)V

    .line 1164
    :cond_0
    return-void
.end method
