.class public Lcom/android/server/lights/MiuiLightsService;
.super Lcom/android/server/lights/LightsService;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/MiuiLightsService$1;,
        Lcom/android/server/lights/MiuiLightsService$LightImpl;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    .line 19
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v2

    .line 20
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-direct {v1, p0, v3, v4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$1;)V

    aput-object v1, v0, v3

    .line 21
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/MiuiLightsService;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 25
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mResolver:Landroid/content/ContentResolver;

    .line 27
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->observe()V

    .line 28
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    invoke-virtual {v0}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->observe()V

    .line 30
    :cond_0
    return-void
.end method
