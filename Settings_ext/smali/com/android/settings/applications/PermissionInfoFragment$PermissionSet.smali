.class Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;
.super Ljava/lang/Object;
.source "PermissionInfoFragment.java"


# instance fields
.field private HJ:Ljava/util/Map;

.field private HK:Ljava/util/Map;

.field private HL:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HJ:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HK:Ljava/util/Map;

    .line 163
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HL:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HJ:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HK:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HL:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public jr()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HJ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public js()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public jt()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings_ext/applications/PermissionInfoFragment$PermissionSet;->HL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
