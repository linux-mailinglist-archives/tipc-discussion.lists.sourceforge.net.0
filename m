Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9463829897A
	for <lists+tipc-discussion@lfdr.de>; Mon, 26 Oct 2020 10:35:53 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kWyum-0005Z6-RS; Mon, 26 Oct 2020 09:35:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kWyuk-0005Ye-Rd
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 09:35:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yf7MJfyleJp+cGXQefbdxplhfg+JSQeh2AXq0D94B0g=; b=ZFgkm9MsCfRLBcZvmKByLGz5fl
 Ub1bIJXtHagXgc2xj1KQC2yxs95qR5JvTKuLBtSJhFY0RmEN7MNJjP22qO5ygrUfL1uAVWSrz4kZE
 40qaat0qcyX8+rCcGS/Q/gKz1zGlZKrF4xljh1SoSsB4hZNnCH0WQKZd1205Gg5tigtQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yf7MJfyleJp+cGXQefbdxplhfg+JSQeh2AXq0D94B0g=; b=D4pyzeWwY+6Zx0bimaYJJzTxke
 QOALaOv8eniSo6yVEzFSbdorS+myfSsG7JXAzo04kmxP1fk2fRuZKAsaYsE+AlCvlGfVGpWhCg80z
 MP7yrLZu5GUvmgk9MJTrAUB/q2sb3ifGAKe2NdNs8ZkBNC7bFWc5avQSY5P2t82Pdpyo=;
Received: from mail-eopbgr70127.outbound.protection.outlook.com
 ([40.107.7.127] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kWyuW-007NDD-2n
 for tipc-discussion@lists.sourceforge.net; Mon, 26 Oct 2020 09:35:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUCCZ/CYp30acywJGSME53gXoYjAL5yi/D3ehIqhZvCsjUuo1+MTbZn3aNQUwGp47Cqff658n9vQhpk7m75BfleZi057NjBJEKRsqxdotxDzODsomNz2C9xuoNto+BLKCjnebqr7csdhvm/vHNehHy7j+Cx9Rj2z4IMthpl3YDSGz4WqV+wAwCKN3cV5jcd2QiBALeKLLgX9g+OlqUCqbzWd1Qi4kZwKnxOM4P52ETCztz2GAzRgh/6hz1z34go4YD9wOx9d6eBgJUJXH6cLSUZCNmlz2HgNVipkVrgcugj9qjP5euBBtNahU/Mc8c2xjTxM81SdlinsM+kyGl+r5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yf7MJfyleJp+cGXQefbdxplhfg+JSQeh2AXq0D94B0g=;
 b=mulKyz5fWTEQ7oonkfBVyU5d5zt4IjwyRwAqEy5xhi2YiLqO0KjDhHOyjKRQClCHflhYnZgOKD6vXka3vHXFfSi2+NLvLknXv5etsXw0sq8WkNxuULessm084JdLLif07zvSZEHUdar3fEocTtlu7VolLBkrH1dVmGQPy9QnrnYd2r8OkcibPJgIRkJ/KsN5kTdvZvQRPkDJ9jJVeqgke8of25gm2ohpLjVsxdLgM8bU/bObO56G3R4COl542BiLnsq27W6Q9vzuDcB4DF+GEz+J4mfNYIgU50tmOtY0BLSQT6CzmkuJnKmF3Pf+am5mzKj3Kq+VYdgaxtFMPEVWOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yf7MJfyleJp+cGXQefbdxplhfg+JSQeh2AXq0D94B0g=;
 b=O2rHk2PVT5RnQvQGM22GIpRl3BD3MxVPxNa/DS1X2aoSgsuVxJmnKUYe4MxH237/YHpKEuWui9sugntdcavdDEB5pnt9EdGeT9fPrECOgorraApcCHca58PXwgDPTLJBGPR+SQ+jod9XJMWVH8mXJfT/4marXw3rgXOeSTF0xag=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DBAPR05MB7255.eurprd05.prod.outlook.com (2603:10a6:10:1ad::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.20; Mon, 26 Oct 2020 09:30:11 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3477.028; Mon, 26 Oct 2020
 09:30:11 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Xin Long <lucien.xin@gmail.com>
Thread-Topic: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
Thread-Index: AQHWqRVD42giL1SfqkSnAokGjLd1g6mpnUsAgAAD3jA=
Date: Mon, 26 Oct 2020 09:30:11 +0000
Message-ID: <DB7PR05MB43158C3BFADBD52C2C92FA6F88190@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201023081931.23670-1-tung.q.nguyen@dektech.com.au>
 <CADvbK_dmqSkOKrYKhF4QgLndV=i-50hF7bLCpdMJz-1W87f_Kg@mail.gmail.com>
In-Reply-To: <CADvbK_dmqSkOKrYKhF4QgLndV=i-50hF7bLCpdMJz-1W87f_Kg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6b364cf0-e381-4da5-98cc-08d87991bcba
x-ms-traffictypediagnostic: DBAPR05MB7255:
x-microsoft-antispam-prvs: <DBAPR05MB72551C051CE97B0774ECDEA288190@DBAPR05MB7255.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m+HlA2vYIQh0he19ViC3mdyRSI80wCC4bqJjj3dJZZPFN01ioc5mPiCsofssQ2BW+a4pHWMzawcutNlNu85E4WQ3YCDDrKw22lBvpyJtugIW8Ku38IRmeFdlN+fRB8esmaTKPcWGIOV0M8re7hX39gu/SYAINkm/RUqoZZ5Kimq3vzj6Vugil9Qm/FamlSDm6nts9kKShqWjDIZ/YTM6OsqaJNLJqDFbCD2BYYngYWUz/bRL95QlxfXqvDF1khcr4CZqSqdtIIejGMwPsSR0QJQue4oIgEl4f+GnoDTUh0ByX8SPKBpCbAWRLgztZ/OJl4gtrmC3I79lfdSa10lzjt5AvOsSO8O6pvSKmJei5nLOcq7gbFIpDE0JTH7eyiASYsgJ314t+t+oAMIT+Y1R4Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(39850400004)(396003)(346002)(376002)(26005)(9686003)(6506007)(8676002)(53546011)(7696005)(66476007)(66446008)(76116006)(8936002)(186003)(66556008)(55016002)(66946007)(5660300002)(52536014)(64756008)(33656002)(316002)(71200400001)(6916009)(4326008)(478600001)(54906003)(83380400001)(966005)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 7bJvhnF3VW8HnvZX8LYOUCMkK1rjUapDMFF3E7k4bGf8wy+ZwiQX06Gc2CRsS9hCf62wJBlDuhOwyRL6qKhm0Xgtw2Z8cBdaK0cOoJ4NfCnLlV6gUuEtQTuZ3vZjdGBReeYm50ZFUr9MqLPOqZi9yZXBcq62bBwXGZ4dAGgwZZjE5+ethTSC4i1Rilk8bYFJB/hQ+yyTlRSPs1AaFSo558Yis8lU4Kf5f0x6mzftLDrhFx/+n9aSB08jHDeVH5c2qVm+pP1EUjbvOpMH57OGRfps7M4CBEMk1lK+8FKw6JIqR/Lsdfsk3FBKTkvIes8upZGHqp1lDvcUk2Sm4tweP9QSrVb5HGyWAbs+A0s9YNL7EncDw2q6W3nP71EFYsI7FlGLZ7EG9JJT4ohWOaicoYdfL3aFdyeAcfZRSeh2xmAO5TGmzTcroOsw68NJQoNcIsJA3kJW7/Y1PX2+RlT0gHWlGVK36OnhM2caIgkr5J4wk6Y2ge1zieTfodTPgKHmlh2W3s1l8Q+B9S60XcseEB5+r/X4fAxfcm/rh7cUZ8mseunKZgxQ0NHHofO8jKZq94p6hapghAEvgrXLEugJ2Esn0iutSCO6wLlnFZzm0pzOxMUVDgrAZ+5EOQycBcxJcRKGV/vsLPam0prEQ/lbBQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b364cf0-e381-4da5-98cc-08d87991bcba
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2020 09:30:11.5010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0VTNFW3c4BdwAASFjbCU/9u7oZ5MYwk52Zz0/UUvRDPMlRFu92IxoeepzJ+wbC6vfyl0elgWjdpjHATBGhvuAgAv7u8DyoKajRsZXtMSoo4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR05MB7255
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.127 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.127 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kWyuW-007NDD-2n
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
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
Cc: "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Cong Wang <xiyou.wangcong@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Xin,

Yes, I know that it should not be a problem if skb_free(NULL) is called.
But I relied on your analysis for syzbot report:
"
in tipc_msg_reassemble():

                if ((&head, &frag))
                        break;
                if (!head)
                        goto error; <--- [1]
        }
        __skb_queue_tail(rcvq, frag);
        return true;
error:
        pr_warn("Failed do clone local mcast rcv buffer\n");
        kfree_skb(head); <---[2]
        return false;

when head is NULL at [1], it goes [2] and could cause a crash.
from the log, we can see "Failed do clone local mcast rcv buffer" as well.
"

I will check again your new analysis and create the correct patch.

Thanks.
Tung Nguyen

-----Original Message-----
From: Xin Long <lucien.xin@gmail.com> 
Sent: Monday, October 26, 2020 4:10 PM
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Cc: tipc-discussion@lists.sourceforge.net; Jon Maloy <jmaloy@redhat.com>; maloy@donjonn.com; Ying Xue <ying.xue@windriver.com>; Cong Wang <xiyou.wangcong@gmail.com>
Subject: Re: [tipc-discussion] [net v1 1/1] tipc: fix memory leak caused by tipc_buf_append()

On Fri, Oct 23, 2020 at 4:20 PM Tung Nguyen
<tung.q.nguyen@dektech.com.au> wrote:
>
> Commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> replaced skb_unshare() with skb_copy() to not reduce the data reference
> counter of the original skb intentionally. This is not the correct
> way to handle the cloned skb because it causes memory leak in 2
> following cases:
>  1/ Sending multicast messages via broadcast link
>   The original skb list is cloned to the local skb list for local
>   destination. After that, the data reference counter of each skb
>   in the original list has the value of 2. This causes each skb not
>   to be freed after receiving ACK:
>   tipc_link_advance_transmq()
>   {
>    ...
>    /* release skb */
>    __skb_unlink(skb, &l->transmq);
>    kfree_skb(skb); <-- memory exists after being freed
>   }
>
>  2/ Sending multicast messages via replicast link
>   Similar to the above case, each skb cannot be freed after purging
>   the skb list:
>   tipc_mcast_xmit()
>   {
>    ...
>    __skb_queue_purge(pkts); <-- memory exists after being freed
>   }
>
> This commit fixes this issue by using skb_unshare() instead. Besides,
> to avoid use-after-free error reported by KASAN, kfree_skb(head) in
> tipc_buf_append() is called only if the pointer to the appending skb
> is not NULL.
>
> v2: improve condition for freeing the appending skb to cover all error
> cases.
>
> Fixes: ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()")
> Reported-by: Thang Hoang Ngo <thang.h.ngo@dektech.com.au>
> Signed-off-by: Tung Nguyen <tung.q.nguyen@dektech.com.au>
> ---
>  net/tipc/msg.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/net/tipc/msg.c b/net/tipc/msg.c
> index 2a78aa701572..46c36c5093de 100644
> --- a/net/tipc/msg.c
> +++ b/net/tipc/msg.c
> @@ -150,8 +150,7 @@ int tipc_buf_append(struct sk_buff **headbuf, struct sk_buff **buf)
>         if (fragid == FIRST_FRAGMENT) {
>                 if (unlikely(head))
>                         goto err;
> -               if (skb_cloned(frag))
> -                       frag = skb_copy(frag, GFP_ATOMIC);
> +               frag = skb_unshare(frag, GFP_ATOMIC);
>                 if (unlikely(!frag))
>                         goto err;
>                 head = *headbuf = frag;
> @@ -797,7 +796,8 @@ bool tipc_msg_reassemble(struct sk_buff_head *list, struct sk_buff_head *rcvq)
>         return true;
>  error:
>         pr_warn("Failed do clone local mcast rcv buffer\n");
> -       kfree_skb(head);
> +       if (head)
> +               kfree_skb(head);
Hi Tung,

kfree_skb(NULL) won't cause any use-after-free issue, as kfree_skb(skb)
will return when skb is NULL.

The root cause of use-after-free is as Cong fixed in
commit ed42989eab57 ("fix the skb_unshare() in tipc_buf_append()"):

When skb_unshare() returns NULL, the 'frag' is freed, and on the err
path the 'buf'(==the 'frag') get freed again, then the original skb
is freed.

But that commit indeed caused the memleak on the success path, and
the right fix should be:

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa7..73068fb 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -155,6 +155,7 @@ int tipc_buf_append(struct sk_buff **headbuf,
struct sk_buff **buf)
                if (unlikely(!frag))
                        goto err;
                head = *headbuf = frag;
+               kfree_skb(*buf)
                *buf = NULL;
                TIPC_SKB_CB(head)->tail = NULL;
                if (skb_is_nonlinear(head)) {

or:

diff --git a/net/tipc/msg.c b/net/tipc/msg.c
index 2a78aa7..32c79c5 100644
--- a/net/tipc/msg.c
+++ b/net/tipc/msg.c
@@ -150,12 +150,11 @@ int tipc_buf_append(struct sk_buff **headbuf,
struct sk_buff **buf)
        if (fragid == FIRST_FRAGMENT) {
                if (unlikely(head))
                        goto err;
-               if (skb_cloned(frag))
-                       frag = skb_copy(frag, GFP_ATOMIC);
+               *buf = NULL;
+               frag = skb_unshare(frag, GFP_ATOMIC);
                if (unlikely(!frag))
                        goto err;
                head = *headbuf = frag;
-               *buf = NULL;
                TIPC_SKB_CB(head)->tail = NULL;
                if (skb_is_nonlinear(head)) {
                        skb_walk_frags(head, tail) {

Thanks.

>         return false;
>  }
>
> --
> 2.17.1
>
>
>
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
