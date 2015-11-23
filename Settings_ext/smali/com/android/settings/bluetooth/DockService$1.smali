.class Lcom/android/settings_ext/bluetooth/DockService$1;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ou:Landroid/bluetooth/BluetoothDevice;

.field final synthetic Ov:I

.field final synthetic Ow:Lcom/android/settings_ext/bluetooth/DockService;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/settings_ext/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    iput-object p2, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->Ou:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->val$state:I

    iput p4, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->Ov:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->Ow:Lcom/android/settings_ext/bluetooth/DockService;

    iget-object v1, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->Ou:Landroid/bluetooth/BluetoothDevice;

    iget v2, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->val$state:I

    iget v3, p0, Lcom/android/settings_ext/bluetooth/DockService$1;->Ov:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings_ext/bluetooth/DockService;->a(Lcom/android/settings_ext/bluetooth/DockService;Landroid/bluetooth/BluetoothDevice;II)V

    .line 399
    return-void
.end method
