.class Lcom/android/settings_ext/eR;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Lcom/android/settings_ext/ct;


# instance fields
.field final synthetic sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

.field private final sY:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ext/eR;->sX:Lcom/android/settings_ext/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Lcom/android/settings_ext/eS;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/eS;-><init>(Lcom/android/settings_ext/eR;)V

    iput-object v0, p0, Lcom/android/settings_ext/eR;->sY:Ljava/lang/Runnable;

    return-void
.end method
