.class Lcom/android/settings/cr;
.super Landroid/os/Handler;
.source "FieldTestInfo.java"


# instance fields
.field final synthetic lx:Lcom/android/settings/FieldTestInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/FieldTestInfo;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/cr;->lx:Lcom/android/settings/FieldTestInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 199
    :sswitch_0
    return-void

    .line 152
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_0
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
    .end sparse-switch
.end method
