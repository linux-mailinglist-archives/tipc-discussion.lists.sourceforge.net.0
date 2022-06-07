Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B116D53F358
	for <lists+tipc-discussion@lfdr.de>; Tue,  7 Jun 2022 03:26:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nyNzX-0006bw-Oy; Tue, 07 Jun 2022 01:26:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1nyNzW-0006bq-98
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 01:26:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wykXlnIrSzK0tzDXzPYwC3uv388iwopwlndgAvVxKg8=; b=ebuI/uKkxylHQK+qMJTo1vPo8C
 /iKL0wQu1nFuuYTPxGU8+jBl+qZ7O2cmb7+x3dFoflYWTPXOXOg3gVQMbTN3tQW2aVbqWqymR3B5k
 JGIQCsmkdQdSX+eT8FvUqxq6qDEOsVfvYaUFUeAZjyH9YToLPbvOqICPXm2Pl+CJ1RUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wykXlnIrSzK0tzDXzPYwC3uv388iwopwlndgAvVxKg8=; b=g0RNLNyXQaXcyZcAJpfmydohG7
 oWJ4a3FLto7BZSQQTcE5qmY5z5EbWO30lJ2UPbWXDhBPQZX/w28IVF1JpsDxCd8ATx3d4+cxGCCdd
 ilAgDb85KQeBCynYBBVqGCBsL9B9+DGSBE9A7ESzWIIq6sVIGU9M21HujjghnZRDTzHU=;
Received: from mail-vi1eur05on2136.outbound.protection.outlook.com
 ([40.107.21.136] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nyNzS-007afE-Bv
 for tipc-discussion@lists.sourceforge.net; Tue, 07 Jun 2022 01:26:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k8cYbSPZkXZ6F93ma7xMiDl7bGIAbdt0PbudMpd2CJ9HpxFD//jZKhO4oeRLj4uIWEgPnpQ0nZuiFUbbkozGzaE9A2yuZaqn7LyOW4WTNjcIwcnyJZzxfR2Z8xAzhYHX1RnwuLmmQzIlneSi/O2UkZ9nW4mXCoEUSh9UR+LfJJVrw4+Kd+vb/773dR5se4oIRgGyOuiLVCMYBEe1XeWjfenF2Fn+oCEzFG1r7/awzLf3YZnm5O/galAuHNayI5tNQLHQ+hPCyLkuIbNeUiv5gt/FW4j3/k2h+bBm7gIeUP6W0udtu5aplfTBnHV5vaPWEgvV5ExPKq00jfURQrMIIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wykXlnIrSzK0tzDXzPYwC3uv388iwopwlndgAvVxKg8=;
 b=YABPIHnX9I3AV2yJ/oeJHe5+qh492p/pwW3ofXEehMhh59wJrfsxcOu8VT+RocMQBIsOEKy36FF0uv66hqCXglSRpoF+jeqdU0o68MGoMAbX5KHuymZM1MialVxeGq8pDHRSrbzu4qp0eOE0+u3TcE0P27hwQF3wbdXwqwb5+gr8BAUVfmKAlQ/5/M2TVJrtjwagRp+q5fq67CcqElpPzQ6P4zHr5XBqRqtsJswwBnH2Np7cDorqpeoWlMfb40mRl6sLcZoyDRQ/U76vGNpCqTvzJu2Z5V/FGec3157jo1hRYRi2o2y7AGZiOLncUzhIOxe1sohpGPVHkGsHYuMRjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wykXlnIrSzK0tzDXzPYwC3uv388iwopwlndgAvVxKg8=;
 b=IphWeOxdsOs64QjKX4lDD57P370pjAfudbLd1aAUnOObuSp86sY9sQueTh/WuVxk0GYACAJayS5J86c6wlSN9U2mbpzuNlDvcP5pzK0BDfgB/rpRxh8she4Y5k9rl4LLrkmEtB4ThCe1LFJkYaZscl8eoe8Q+BTd1YsjOxxQXzA=
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com (2603:10a6:10:21f::6)
 by HE1PR0502MB3932.eurprd05.prod.outlook.com (2603:10a6:7:88::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.18; Tue, 7 Jun
 2022 01:26:27 +0000
Received: from DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8]) by DB9PR05MB7641.eurprd05.prod.outlook.com
 ([fe80::84e0:5f1b:9fe2:34f8%2]) with mapi id 15.20.5314.019; Tue, 7 Jun 2022
 01:26:27 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Xin Long <lucien.xin@gmail.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Thread-Topic: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
Thread-Index: AQHYec5EFSBSqSXNNkuQZz+P/8XT861Cqe8AgAB9OzA=
Date: Tue, 7 Jun 2022 01:26:27 +0000
Message-ID: <DB9PR05MB764119C65954565084DABFC7F1A59@DB9PR05MB7641.eurprd05.prod.outlook.com>
References: <f08fdb9faeb9646f8306492f0899c5d257045c91.1654537961.git.lucien.xin@gmail.com>
 <CADvbK_ctreM5dF_sVkeFVV9-+U1Z=JHT7GJhDCd_Xb+=5VikAg@mail.gmail.com>
In-Reply-To: <CADvbK_ctreM5dF_sVkeFVV9-+U1Z=JHT7GJhDCd_Xb+=5VikAg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fc73d88-82b6-4e1a-cdc3-08da4824be33
x-ms-traffictypediagnostic: HE1PR0502MB3932:EE_
x-microsoft-antispam-prvs: <HE1PR0502MB393215E739F01BD1555145E9F1A59@HE1PR0502MB3932.eurprd05.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fo88bpDduDtuKUiDh9rHDEWGL4MgjFcwsQYMb7MRzfjKsNLACImA+fL4NNbRXCnVF8IU/7GumxUmKT6jiW1e16ZeBPUQKI5urmFK4yroOx59c+IBSnFYp+0SfqQyi9Oj8R2BmyQtnQ86slbjg88sWOWxuwoDtOIRyw1kQBHPzoVjJ9ThAMGgY+v/TlrVOibMK3TWdCYQ+DvdO/edJOYdeBaNnVXxj8DTWEGBmVeStW5VMrPpkweMrvf3I/oQFgz+XKW9UiP+fh2txqHB/3h8CkIFwphzqyGx0Wf1SMF/ZQM3yAFQycFgO0e9qBwC4UqtYpRVDX6a2aiBEq+dLkxZ/U2s7Ghr7OLrtzCIAF5BQ2qYzgAlpX6qZYNYmlR8IiVePwQOSv6rtwxOwdSfWmh53+bDTcaZJORi/02AB8saQOLNS0rzMi91VunYd/dDn9I6yQOKzFZGfUYxIAofrpOzq7qZJiH/teQmbcvWq+8eabfjovR/5vZ8lNck/9kcENvvmmhVJaTVAwuJn1Er2hrfWDONEfLAH4tEWbBcAWtgBVx/A6WdT2vQ+0XmfVWINPnFqMteLJ3YPPu/kTjQcRJUQfRcYQ/r6JMbOjjQieciKlxlAKU2VvLLQvV1qB5zG9ludQd4xTT7yE7JJQ0YiDAXPIQD1XSbHOgAL4M/E/FiuldOiP9L/Mzo3sWaly552+0H+/QHKcyhOctsPW6JBf4ppMk83O97wYR+FzzUE+1X7XnUr2idAmk+qQQYBcRBNYr5PfRvAFjHK23sc0dUO9NaIw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB9PR05MB7641.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(26005)(8936002)(110136005)(4326008)(2906002)(64756008)(38100700002)(7696005)(66556008)(6506007)(66946007)(66476007)(186003)(71200400001)(66446008)(52536014)(76116006)(8676002)(9686003)(53546011)(55016003)(316002)(966005)(508600001)(33656002)(122000001)(86362001)(83380400001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?86n6FPrxtFSAByskCdzXsmLCcTuFSUEvkCJc2sRKpvl8UyP5H67Vdg3B2kva?=
 =?us-ascii?Q?Y+AwfpKzi/mwsxedXWRTfqQCA7sC9WsgAgQjEPVueBmZUQS9S2fMtYwWerzu?=
 =?us-ascii?Q?CZCNcy8IgLzs9qlJCQD6Hiu7q14TLBYSG6TSEPdLufkxMxqRVIma0MJNNldV?=
 =?us-ascii?Q?eCjtcUJmQKttMlRBlrQPt1cXjVaOz6whQIMpnRg4YwEgRY0PUeIVlOvzZbIl?=
 =?us-ascii?Q?lvzagVNsB2MCsYQvNkhJCP3Cm1oAg9X93owqCZjtIhURqfxmIT9OfUYdhI5i?=
 =?us-ascii?Q?Z+D0YksJ044V1j+lr79otV5oIHLE5w+T4uXLMQyxuII9eMMDLiyR+k/c7IiL?=
 =?us-ascii?Q?vlvOhfkk59e/P4/EPeBHPlB5vyAhe1+5O4Z4wc4z9axceOk+S8dxsT0JldW1?=
 =?us-ascii?Q?l/EIcX7hMnwwoTSRsJUTxr8bWyVkv+KUEVnlN+UJ3RU+Mmr/MlRTHYOgmejb?=
 =?us-ascii?Q?0FvCYoTe4F2NBKwUBI/UFbfda1K7LTlFX6g2ytexS73+xmM8ivtW2D28dLwo?=
 =?us-ascii?Q?8NtI786eIRJVDnN1OQLzXvjkLB3WHXjNLF6SAPuLObcqLdGwkuJuHWtvQhkV?=
 =?us-ascii?Q?iYrQPiFhOjer1h48kfQx5wZfL9TMgKGJ++y/nGh7I9wUdjsWXUY2CfncHqxu?=
 =?us-ascii?Q?JMFAHTW98Nwy2xA+c91wjraqOaBlUTcCBrgVggtIo/ehzxWXM96A8KvZsReH?=
 =?us-ascii?Q?VeP//mOCbN43YreDAqtbVtA/5yGQgXAjJl2UCbj4NRuneHk+LfgQwMBMs6lU?=
 =?us-ascii?Q?hO/gs4ajOnDkxbgOXDpWJkcpC20cosFqTWmJmk1XGp9oIJm9CuiM5KUA/Wfm?=
 =?us-ascii?Q?bHAIFMkOLfpIHO9tDjUiL8bGXPoNGhFVdiVMSsaad+dIf001gz8m5PB/JGaj?=
 =?us-ascii?Q?ZB18fWdi+eu8VkXN/oKYcaKJ8yZxcSszOtU6hE68TGK/TQMSY8+7Qug/FtmL?=
 =?us-ascii?Q?Z27dmGxOZ5QSNldmafPGPsobRWV2hI9iMtVJKhCNd53sBskaH0R5s90ON70l?=
 =?us-ascii?Q?tDtgjwFLSrWy2fDl1vJXkOalwH4a//J/Ypgsge5jjyWMGOPvYeSrrc1/udPa?=
 =?us-ascii?Q?/UReAWBoVsY9Pc8v9TX5kKM9qOzCgyhFDTgVPGridPeg7Q3rPXiIJeFLHEQG?=
 =?us-ascii?Q?7k6WpcAUuJ9HkWjwJTI6amseWf/8+0EN3Sz4URIxtdY7Aj2s7g/TNxdMnuA5?=
 =?us-ascii?Q?EZGB3HPZUBz02662RztQsWXGGbcYbjVg3JWVYiUQB2Ec+wCMmZ7sWRLTydxy?=
 =?us-ascii?Q?O86SkW626QIwcdbmamluxfT0HkokQpAJzTLmerDS4yuUvwcyvvJ+T6y+E+mO?=
 =?us-ascii?Q?Xg2/Fjgyj2HgtioMuKF970EDAlXqn77U4yjTuEc2klUEnLsLpi9MmGH+ujN8?=
 =?us-ascii?Q?C507QC9gmENNJCbwIgLOlQnn0UAr+49zlNwg3eydkUORY7VTE2aOCrrmtKMu?=
 =?us-ascii?Q?kNoTNLuuzAPW6DiCsfuFqeF1u8daIFwPi9SWc1jMru1o3En8W7Ucvs4GAOnf?=
 =?us-ascii?Q?dVzPoWFJOj+QxF/eNsd3mLNBkJoMZfVzSScVzab/E2noKtFwT8bQEYenehvP?=
 =?us-ascii?Q?zsfDrEWctJujt7JrguaPBAJV2B7eBAy6QFibB3Saikf0YsFZxZNzJjivg1GS?=
 =?us-ascii?Q?M5GH4HZmz3KDX+COHe0fTTqYbaynt2+uuP6Y0PQSQTrxiHLRqk29JDDxskL0?=
 =?us-ascii?Q?EeqS9YtzXRvXv4rY5BOOEuBT+LgC+b3Usr+fxxkCdLXYZD581hTob6FSU2OL?=
 =?us-ascii?Q?3lQqAvdcAA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB9PR05MB7641.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fc73d88-82b6-4e1a-cdc3-08da4824be33
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2022 01:26:27.3278 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gBPX1X7qG/G5qEaMXctidl8Gahl32Rynn73MVDh6LoAKzut7ytjyofGLjWhOc7McN5p5aOgsNdNqWwXVysOEugC2CYPwBj4NkXg0qciXI4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0502MB3932
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.136 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nyNzS-007afE-Bv
Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from
 tipc_bc_base
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

> -----Original Message-----
> From: Xin Long <lucien.xin@gmail.com>
> Sent: Tuesday, June 7, 2022 12:57 AM
> To: tipc-discussion@lists.sourceforge.net
> Subject: Re: [tipc-discussion] [PATCH net-next] tipc: remove inputq from tipc_bc_base
> 
> fix Jon's email address.
> 
> On Mon, Jun 6, 2022 at 1:52 PM Xin Long <lucien.xin@gmail.com> wrote:
> >
> > After Commit 2af5ae372a4b ("tipc: clean up unused code and structures"),
> > there is no place really using tn->bcbase->inputq. This patch is to
> > delete this member from struct tipc_bc_base.
> >
> > Signed-off-by: Xin Long <lucien.xin@gmail.com>
> > ---
> >  net/tipc/bcast.c | 22 +---------------------
> >  1 file changed, 1 insertion(+), 21 deletions(-)
> >
> > diff --git a/net/tipc/bcast.c b/net/tipc/bcast.c
> > index 593846d25214..2293f6caa682 100644
> > --- a/net/tipc/bcast.c
> > +++ b/net/tipc/bcast.c
> > @@ -63,7 +63,6 @@ unsigned long sysctl_tipc_bc_retruni __read_mostly;
> >   */
> >  struct tipc_bc_base {
> >         struct tipc_link *link;
> > -       struct sk_buff_head inputq;
> >         int dests[MAX_BEARERS];
> >         int primary_bearer;
> >         bool bcast_support;
> > @@ -436,7 +435,6 @@ int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
> >  int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
> >  {
> >         struct tipc_msg *hdr = buf_msg(skb);
> > -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> >         struct sk_buff_head xmitq;
> >         int rc;
> >
> > @@ -456,10 +454,6 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
> >
> >         tipc_bcbase_xmit(net, &xmitq);
> >
> > -       /* Any socket wakeup messages ? */
> > -       if (!skb_queue_empty(inputq))
> > -               tipc_sk_rcv(net, inputq);
> > -
> >         return rc;
> >  }
> >
> > @@ -470,7 +464,6 @@ int tipc_bcast_rcv(struct net *net, struct tipc_link *l, struct sk_buff *skb)
> >  void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
> >                         struct tipc_msg *hdr)
> >  {
> > -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> >         u16 acked = msg_bcast_ack(hdr);
> >         struct sk_buff_head xmitq;
> >
> > @@ -485,10 +478,6 @@ void tipc_bcast_ack_rcv(struct net *net, struct tipc_link *l,
> >         tipc_bcast_unlock(net);
> >
> >         tipc_bcbase_xmit(net, &xmitq);
> > -
> > -       /* Any socket wakeup messages ? */
> > -       if (!skb_queue_empty(inputq))
> > -               tipc_sk_rcv(net, inputq);
> >  }
> >
> >  /* tipc_bcast_synch_rcv -  check and update rcv link with peer's send state
> > @@ -499,7 +488,6 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
> >                         struct tipc_msg *hdr,
> >                         struct sk_buff_head *retrq)
> >  {
> > -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> >         struct tipc_gap_ack_blks *ga;
> >         struct sk_buff_head xmitq;
> >         int rc = 0;
> > @@ -522,9 +510,6 @@ int tipc_bcast_sync_rcv(struct net *net, struct tipc_link *l,
> >
> >         tipc_bcbase_xmit(net, &xmitq);
> >
> > -       /* Any socket wakeup messages ? */
> > -       if (!skb_queue_empty(inputq))
> > -               tipc_sk_rcv(net, inputq);
> >         return rc;
> >  }
> >
> > @@ -551,7 +536,6 @@ void tipc_bcast_add_peer(struct net *net, struct tipc_link *uc_l,
> >  void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
> >  {
> >         struct tipc_link *snd_l = tipc_bc_sndlink(net);
> > -       struct sk_buff_head *inputq = &tipc_bc_base(net)->inputq;
> >         struct sk_buff_head xmitq;
> >
> >         __skb_queue_head_init(&xmitq);
> > @@ -563,10 +547,6 @@ void tipc_bcast_remove_peer(struct net *net, struct tipc_link *rcv_l)
> >         tipc_bcast_unlock(net);
> >
> >         tipc_bcbase_xmit(net, &xmitq);
> > -
> > -       /* Any socket wakeup messages ? */
> > -       if (!skb_queue_empty(inputq))
> > -               tipc_sk_rcv(net, inputq);
> >  }
> >
> >  int tipc_bclink_reset_stats(struct net *net, struct tipc_link *l)
> > @@ -703,7 +683,7 @@ int tipc_bcast_init(struct net *net)
> >                                  BCLINK_WIN_DEFAULT,
> >                                  BCLINK_WIN_DEFAULT,
> >                                  0,
> > -                                &bb->inputq,
> > +                                NULL,
> >                                  NULL,
> >                                  NULL,
> >                                  &l))
> > --
> > 2.31.1
> >
> 
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion

Please also remove kernel-doc comment for this member too.
Regards,
Hoang


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
