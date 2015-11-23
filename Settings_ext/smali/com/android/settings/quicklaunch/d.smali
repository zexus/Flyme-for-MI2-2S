.class Lcom/android/settings/quicklaunch/d;
.super Landroid/database/ContentObserver;
.source "QuickLaunchSettings.java"


# instance fields
.field final synthetic ahS:Lcom/android/settings/quicklaunch/c;


# direct methods
.method public constructor <init>(Lcom/android/settings/quicklaunch/c;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/settings/quicklaunch/d;->ahS:Lcom/android/settings/quicklaunch/c;

    .line 361
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 362
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 366
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/quicklaunch/d;->ahS:Lcom/android/settings/quicklaunch/c;

    invoke-static {v0}, Lcom/android/settings/quicklaunch/c;->a(Lcom/android/settings/quicklaunch/c;)V

    .line 369
    return-void
.end method
