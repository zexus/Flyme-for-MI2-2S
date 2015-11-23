.class Lcom/android/settings/sound/h;
.super Ljava/lang/Object;
.source "AudioSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajq:Lcom/android/settings/sound/e;


# direct methods
.method constructor <init>(Lcom/android/settings/sound/e;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/sound/h;->ajq:Lcom/android/settings/sound/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/settings/sound/h;->ajq:Lcom/android/settings/sound/e;

    invoke-static {v0}, Lcom/android/settings/sound/e;->a(Lcom/android/settings/sound/e;)V

    .line 124
    return-void
.end method
