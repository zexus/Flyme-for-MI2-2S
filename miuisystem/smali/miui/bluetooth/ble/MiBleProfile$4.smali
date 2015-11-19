.class Lmiui/bluetooth/ble/MiBleProfile$4;
.super Ljava/lang/Object;
.source "MiBleProfile.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/bluetooth/ble/MiBleProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/bluetooth/ble/MiBleProfile;


# direct methods
.method constructor <init>(Lmiui/bluetooth/ble/MiBleProfile;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 302
    iget v2, p1, Landroid/os/Message;->what:I

    .line 303
    .local v2, "what":I
    if-ne v2, v4, :cond_1

    .line 304
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v3, v3, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    if-eqz v3, :cond_0

    .line 305
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    iget-object v3, v3, Lmiui/bluetooth/ble/MiBleProfile;->mCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v5}, Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;->onState(I)V

    :cond_0
    move v3, v4

    .line 317
    :goto_0
    return v3

    .line 308
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 309
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 310
    .local v1, "property":I
    iget-object v3, p0, Lmiui/bluetooth/ble/MiBleProfile$4;->this$0:Lmiui/bluetooth/ble/MiBleProfile;

    # getter for: Lmiui/bluetooth/ble/MiBleProfile;->mPropertyCallbacks:Landroid/util/SparseArray;
    invoke-static {v3}, Lmiui/bluetooth/ble/MiBleProfile;->access$500(Lmiui/bluetooth/ble/MiBleProfile;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;

    .line 311
    .local v0, "cb":Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;
    if-eqz v0, :cond_2

    .line 312
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v0, v1, v3}, Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;->notifyProperty(I[B)V

    :cond_2
    move v3, v4

    .line 314
    goto :goto_0

    .line 317
    .end local v0    # "cb":Lmiui/bluetooth/ble/MiBleProfile$IPropertyNotifyCallback;
    .end local v1    # "property":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method
