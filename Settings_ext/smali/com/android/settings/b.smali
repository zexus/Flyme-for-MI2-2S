.class Lcom/android/settings_ext/b;
.super Landroid/database/ContentObserver;
.source "AccessControlFragment.java"


# instance fields
.field final synthetic g:Lcom/android/settings_ext/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/AccessControlFragment;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/settings_ext/b;->g:Lcom/android/settings_ext/AccessControlFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ext/b;->g:Lcom/android/settings_ext/AccessControlFragment;

    invoke-static {v0}, Lcom/android/settings_ext/AccessControlFragment;->a(Lcom/android/settings_ext/AccessControlFragment;)V

    .line 35
    return-void
.end method
