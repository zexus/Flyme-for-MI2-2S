.class Lcom/android/settings_ext/aV;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gH:Lcom/android/settings_ext/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/settings_ext/aV;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/settings_ext/aV;->gH:Lcom/android/settings_ext/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ext/DataUsageSummary;->dU()V

    .line 455
    return-void
.end method
