.class Lcom/android/settings/aG;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fb:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/aG;->fb:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/aG;->fb:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 144
    return-void
.end method
