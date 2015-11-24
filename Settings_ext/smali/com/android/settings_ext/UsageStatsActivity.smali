.class public Lcom/android/settings_ext/UsageStatsActivity;
.super Lmiui/app/Activity;
.source "UsageStatsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private i:Landroid/content/pm/PackageManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private zh:Landroid/app/usage/UsageStatsManager;

.field private zi:Lcom/android/settings_ext/hf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->zh:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/UsageStatsActivity;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    const v0, 0x7f04011b

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/UsageStatsActivity;->setContentView(I)V

    .line 235
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    iput-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->zh:Landroid/app/usage/UsageStatsManager;

    .line 236
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/UsageStatsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ext/UsageStatsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->i:Landroid/content/pm/PackageManager;

    .line 239
    const v0, 0x7f1002bf

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 240
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    const v0, 0x7f1002c0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/UsageStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 243
    new-instance v1, Lcom/android/settings_ext/hf;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/hf;-><init>(Lcom/android/settings_ext/UsageStatsActivity;)V

    iput-object v1, p0, Lcom/android/settings_ext/UsageStatsActivity;->zi:Lcom/android/settings_ext/hf;

    .line 244
    iget-object v1, p0, Lcom/android/settings_ext/UsageStatsActivity;->zi:Lcom/android/settings_ext/hf;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/settings_ext/UsageStatsActivity;->zi:Lcom/android/settings_ext/hf;

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/hf;->ad(I)V

    .line 250
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method
