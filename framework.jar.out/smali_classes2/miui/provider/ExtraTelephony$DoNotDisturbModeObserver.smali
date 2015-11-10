.class Lmiui/provider/ExtraTelephony$DoNotDisturbModeObserver;
.super Landroid/database/ContentObserver;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoNotDisturbModeObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1454
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1455
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1459
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1460
    # getter for: Lmiui/provider/ExtraTelephony;->quietListener:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$000()Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lmiui/provider/ExtraTelephony;->context:Landroid/content/Context;
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$100()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1461
    # getter for: Lmiui/provider/ExtraTelephony;->quietListener:Lmiui/provider/ExtraTelephony$QuietModeEnableListener;
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$000()Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    move-result-object v0

    # getter for: Lmiui/provider/ExtraTelephony;->context:Landroid/content/Context;
    invoke-static {}, Lmiui/provider/ExtraTelephony;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Lmiui/provider/ExtraTelephony$QuietModeEnableListener;->onQuietModeEnableChange(Z)V

    .line 1463
    :cond_0
    return-void
.end method
