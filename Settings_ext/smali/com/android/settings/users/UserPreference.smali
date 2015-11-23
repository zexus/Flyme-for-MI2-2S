.class public Lcom/android/settings/users/UserPreference;
.super Landroid/preference/Preference;
.source "UserPreference.java"


# instance fields
.field private amE:Landroid/view/View$OnClickListener;

.field private amF:I

.field private mD:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserPreference;->amF:I

    .line 37
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 49
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 50
    :cond_0
    const v0, 0x7f0400c6

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 52
    :cond_1
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mD:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->amE:Landroid/view/View$OnClickListener;

    .line 54
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 55
    return-void
.end method

.method private getSerialNumber()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    .line 102
    :goto_0
    return v0

    .line 91
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->amF:I

    if-gez v0, :cond_3

    .line 93
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 94
    const v0, 0x7fffffff

    goto :goto_0

    .line 95
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 96
    const v0, 0x7ffffffe

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->amF:I

    .line 100
    iget v0, p0, Lcom/android/settings/users/UserPreference;->amF:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    goto :goto_0

    .line 102
    :cond_3
    iget v0, p0, Lcom/android/settings/users/UserPreference;->amF:I

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 110
    instance-of v1, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v1

    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-direct {p1}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 29
    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 60
    const v1, 0x7f1001cd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 61
    const v2, 0x7f1001cb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 62
    const v3, 0x7f1001ce

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 63
    if-eqz v3, :cond_0

    .line 64
    iget-object v4, p0, Lcom/android/settings/users/UserPreference;->mD:Landroid/view/View$OnClickListener;

    if-eqz v4, :cond_2

    const-string v4, "no_remove_user"

    invoke-virtual {v0, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mD:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {v3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    :cond_0
    :goto_0
    const v0, 0x7f1001cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/settings/users/UserPreference;->amE:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/android/settings/users/UserPreference;->amE:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mD:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 86
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 87
    return-void

    .line 69
    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
