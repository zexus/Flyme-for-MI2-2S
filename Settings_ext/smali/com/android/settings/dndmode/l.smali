.class Lcom/android/settings/dndmode/l;
.super Landroid/database/ContentObserver;
.source "DoNotDisturbModeFragment.java"


# instance fields
.field final synthetic WR:Lcom/android/settings/dndmode/k;


# direct methods
.method constructor <init>(Lcom/android/settings/dndmode/k;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/dndmode/l;->WR:Lcom/android/settings/dndmode/k;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/dndmode/l;->WR:Lcom/android/settings/dndmode/k;

    invoke-static {v0}, Lcom/android/settings/dndmode/k;->a(Lcom/android/settings/dndmode/k;)V

    .line 69
    return-void
.end method
