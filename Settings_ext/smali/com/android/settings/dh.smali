.class Lcom/android/settings/dh;
.super Ljava/lang/Object;
.source "MiuiAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oq:Lcom/android/settings/dg;


# direct methods
.method constructor <init>(Lcom/android/settings/dg;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/settings/dh;->oq:Lcom/android/settings/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/dh;->oq:Lcom/android/settings/dg;

    invoke-static {v0}, Lcom/android/settings/dg;->a(Lcom/android/settings/dg;)V

    .line 23
    return-void
.end method
