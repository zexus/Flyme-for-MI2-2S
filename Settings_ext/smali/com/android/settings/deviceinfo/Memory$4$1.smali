.class Lcom/android/settings/deviceinfo/Memory$4$1;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic RM:Lcom/android/settings/deviceinfo/Memory$4;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Memory$4;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Memory$4$1;->RM:Lcom/android/settings/deviceinfo/Memory$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Memory$4$1;->RM:Lcom/android/settings/deviceinfo/Memory$4;

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Memory$4;->RL:Lcom/android/settings/deviceinfo/Memory;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/Memory;->a(Lcom/android/settings/deviceinfo/Memory;I)V

    .line 380
    return-void
.end method
