.class Lcom/android/settings/v;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# instance fields
.field final synthetic ad:Lcom/android/settings/t;


# direct methods
.method constructor <init>(Lcom/android/settings/t;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/v;->ad:Lcom/android/settings/t;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/v;->ad:Lcom/android/settings/t;

    invoke-static {v0}, Lcom/android/settings/t;->a(Lcom/android/settings/t;)V

    .line 60
    return-void
.end method
