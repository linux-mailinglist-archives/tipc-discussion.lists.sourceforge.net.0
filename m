Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F6329CDF4
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Oct 2020 06:23:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kXdw1-00078a-SS; Wed, 28 Oct 2020 05:23:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1kXdvz-00078O-Nl
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Oct 2020 05:23:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EeexZfz4IIIXjM7qQCd0CQZb2lCAE2McbRf+Agmzy4w=; b=eTsieAeOHd6wBUsT3dcrNx+sri
 JnTvjqnuT8YQspXBMZ4iaFXV1r0pkMws0f7ttjrs6EyCI0oRaoiw7jC5mfvUBKW1dOfMCjui/fFdc
 73/VMk/lrqRxOYNlPxsoUcN+q7nASdraXj3Jsq5qKAeoXjgv7oPd2y1XYlpTvLLL/iiw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EeexZfz4IIIXjM7qQCd0CQZb2lCAE2McbRf+Agmzy4w=; b=HZLKx5PRr3ivFlLqKkrwDcWH0K
 y8n/AHwWNYAVeJ2wiwMQsOymQWPXueTpBLSWOx1HVvMvx6sDPAm8pg9gnvFT6gQtpfZnHbA1yaWxQ
 sDhER5f5FInqZV9NcCw8A7n8ERifTEhO2e7K/MbbBeFYaRHxlFCYIA+0xCddPGzgeWI4=;
Received: from mail-eopbgr80097.outbound.protection.outlook.com ([40.107.8.97]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kXdvo-00GXkf-Sw
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Oct 2020 05:23:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T1iV107LhiBY1XW5kvWWXHyIznpKFykEsKMadVbzyq+7Mpb14bHQBwmfUce5YBlPVo93ihVosNKvY38yOGfQMJEhl9oDsOQKGWUzGzdYiM1GV5QcWzucGHlBNPVGdAX/BQOq4MBTA93Vt7znxHlQhElcKs1+c7kYZgEyHQ7N5bM49U6j9w8RYvlcgY8pt7fKrP4GfU4lyLSg0TuCG17wcP3nlqWSk5NPvsOBSK0vaRteQrSoSn8WBzDZKlLbu9qtgcb1rWpbo1rf8ymw0NnNof13Ct8F9P/lDBSgysuQSVu+nMB4tbEPd88mnFGPagZlol4mYuMuUOt1XcZIOjaijA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EeexZfz4IIIXjM7qQCd0CQZb2lCAE2McbRf+Agmzy4w=;
 b=OlcvpKsRYxHwt75xT8RbLDmHUuKiJSNpEzngWQ9PbvZRHBDM6umyMKL5AAVMgHkBiSL3Wda/2LM7+wh+Woaevt15wLa81NCAmNuPe03N0fNIt2e0MMnxW5aX/c54ctfGf4s6GCbRwJToepw0ksbNVsYHn836fJIdjLzETgEYC0CKaXqWVNOTv29Xl8KPDbeUwofMTemCkhXi1E672KxgKOGUdYhOpyA8rjT0+jYzfShJTPZgaScW7b1twTSM9OO0VMvEBr5BaUIlwCgd32PsVXS5hGnhzm44sbSq5YfZkb5jgwSd2ibaCkjmksyrgwy/ixWKUn3clBgLiRgPtseZ8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EeexZfz4IIIXjM7qQCd0CQZb2lCAE2McbRf+Agmzy4w=;
 b=h67loJ4D+LtS/qXFSQhzi8RbPiafKRQvn9aETiiNHTh+JT5uae9gjV4C2SMgcqfKmqYKnv4weFaHtgAP6grZPdfvQ4JDGHXyFs8/oeP2v0rwPbRs+igfB1Im2W2+466MeBqAbO6V42bay5bqVrDeeBhHIeBNCjJtCZRJhDaQTsc=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB7PR05MB4473.eurprd05.prod.outlook.com (2603:10a6:5:1b::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.27; Wed, 28 Oct 2020 05:23:23 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::c04f:dae3:9fa4:ff56%4]) with mapi id 15.20.3477.028; Wed, 28 Oct 2020
 05:23:23 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Cong Wang <xiyou.wangcong@gmail.com>,
 "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Xin Long <lucien.xin@gmail.com>,
 David Miller <davem@davemloft.net>, Linux Kernel Network Developers
 <netdev@vger.kernel.org>
Thread-Topic: [tipc-discussion] [net v3 1/1] tipc: fix memory leak caused by
 tipc_buf_append()
Thread-Index: AQHWrBCm58JZTVLJmkGUoOeheDCtC6mr7XKAgABhSqA=
Date: Wed, 28 Oct 2020 05:23:23 +0000
Message-ID: <DB7PR05MB431592FDCD6EEB96C8DB0EE688170@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20201027032403.1823-1-tung.q.nguyen@dektech.com.au>
 <CAM_iQpWsUyxSni9+4Khuu28jvski+vfphjJSVgXJH+xS_NWsUQ@mail.gmail.com>
In-Reply-To: <CAM_iQpWsUyxSni9+4Khuu28jvski+vfphjJSVgXJH+xS_NWsUQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [14.161.14.188]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20aa00a1-0318-4fa3-fa33-08d87b01974f
x-ms-traffictypediagnostic: DB7PR05MB4473:
x-microsoft-antispam-prvs: <DB7PR05MB44737F63F6DA8362EF255D5E88170@DB7PR05MB4473.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pAkJR/aU5ggEPlj/Cqhmh7iE/gTp+1cz+0nqUQLavrx2KI5ywNYacxqouzIHEhNjp6q7guzLbFdr7MAm7nCOzp+4ChWxOZUH0O2g2ddy04qnt0yVmr0P5EGTySQykfMYYicer1YcHrJeysZrq8pe43Rc9EmmI/ZI3j0uO5tCSUeQgiq0YVZmN93zn+3tqA2HgV6pYkw3FP+fyyZVl4nGf96aTdxe/rnEIJf3FnfY5LI6WFQ3plRgrO/N/5YcHnbsu1oJS3hgWxOaRP4FA89GcExrLpJIKzMFZ+zMJFCamMV6UmtSWc2sVsuu0ZHZCsMViOrOcV8h9dexqq/6qptbQXNUYNEz2qUWWXoY8l8HJRE89yfD5+csx+D+RkG+rZNKIRdUyYGwD2CatE8SMeS+vA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(136003)(39840400004)(346002)(366004)(396003)(316002)(110136005)(52536014)(66476007)(66946007)(5660300002)(66446008)(76116006)(66556008)(64756008)(53546011)(71200400001)(26005)(186003)(6506007)(7696005)(8936002)(8676002)(2906002)(9686003)(33656002)(86362001)(55016002)(966005)(478600001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: fmRwQNelbRTIjs/mXI6UWRaZuwZZ0b+PzpA7qNIxx5DNUE/SR1haw7eg6Lfiw1Wte6HXNAAFJ1A154g3aE3ctXwI28dwdEUKaY9vQvUQJaK+vKO8V8XauWypbaSmAjMYWRLrgqTx2lKVW/EC5yGwbCyzcD6YSJTA8tLn3ANIEwygRpBByTSPeKv8xSsu2IlwfzW0RXcR5OYrA0eBx/9z5hsaYW3e4d+Sbd7EcTAVyO8PgM2U59k6xMsLV8d462XC0dqVdb1EqpcM8oV9nsAohr4OEUf3NA3SIGm/HnFYdgRoIc2Y1yNqWphf00XeNwBfb7GC6u/Guldij/q/FmnAHES0am6SmldVzaU+aoaocGQWTvRcjBDdDSdmYjgN2icYUsobQEDY0JGxfMuULrkXutbPEmVOLsmzHhcASJqr2HRd0aLz9SB1AJbIy59agleHfjP4fmW41OX04Xg6xED1rdZ48Fnz84St1h1nkAvbJzmSIzWq9qwNMizfN1369cYDGOiJy7mwhIUc0cdCRSeoP8y5WL8gNw+8AdA1zLjQtUoMKU86juk46E94E8dLNvQw0PJekEmwzH46Uzs/Gk9X6tbJXLOwmmYwFWLmS/A4c+CWkjmX4mxrFhwD3wfDnTp+mDx7COgipTKJNhXL/soJcA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20aa00a1-0318-4fa3-fa33-08d87b01974f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2020 05:23:23.3681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M/EHy6OsM8G8H/ZCMjmHk4PvluePGm4XqiSjECeDvJAPqcHRnn0DJ0EUHJiqJ5RwHADw6uip3p5RWhI5Dnt8JITQ1k7vmVQAOseiP/zWrsM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR05MB4473
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.97 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1kXdvo-00GXkf-Sw
Subject: Re: [tipc-discussion] [net v3 1/1] tipc: fix memory leak caused by
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Cong,

No, I have never ignored any comment from reviewers. I sent v2 on Oct 26 after discussing with Xin Long, and v3 on Oct 27 after receiving comment from Jakub.
I received your 3 emails nearly at the same time on Oct 28. It's weird. Your emails did not appear in this email archive either: https://sourceforge.net/p/tipc/mailman/tipc-discussion/

Anyway, I answer your questions:
1/ Why it is not correct if not decreasing the data reference counter in tipc_buf_append()
In my changelog, I just pinpointed the place where the leak would happen. I show you the details here:
tipc_msg_reassemble(list,-)
{
 ...
 frag = skb_clone(skb, GFP_ATOMIC); // each data reference counter of the original skb has the value of 2.
 ...
 If (tipc_buf_append(&head, &frag)) // each data reference counter of the original skb STILL has the value of 2 because the usage of skb_copy() instead of skb_unshare()
 ...
}
The original skb list then is passed to tipc_bcast_xmit() which in turn calls tipc_link_xmit():
tipc_link_xmit(-, list, -)
{
 ...
 _skb = skb_clone(skb, GFP_ATOMIC); // each data reference counter of the original skb has the value of 3.
...
}

When each cloned skb is sent out by the driver, it is freed by the driver. That leads to each data reference counter of the original skb has the value of 2.
After receiving ACK from another peer, the original skb needs to be freed:
tipc_link_advance_transmq()
{
 ...
 kfree_skb(skb);  // memory exists after being freed because the data reference counter still has the value of 2.
}

This indeed causes memory leak.

2/ Why previously-used skb_unclone() works.
The purpose of skb_unclone() is to unclone the cloned skb. So, it does not make any sense to say that " skb_unclone() expects refcnt == 1" as I understand
you implied the data reference counter.
pskb_expand_head() inside skb_unclone() requires that the user reference counter has the value of 1 as implemented:
pskb_expand_head()
{
 ...
 BUG_ON(skb_shared(skb)); // User reference counter must be 1
...
atomic_set(&skb_shinfo(skb)->dataref, 1); // The data reference counter of the original skb has the value of 1
...
}
That explains why after being passed to tipc_link_xmit(), each data reference counter of each original skb has the value of 2 and can be freed in tipc_link_advance_transmq().

Best regards,
Tung Nguyen

-----Original Message-----
From: Cong Wang <xiyou.wangcong@gmail.com> 
Sent: Wednesday, October 28, 2020 3:50 AM
To: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
Cc: David Miller <davem@davemloft.net>; Linux Kernel Network Developers <netdev@vger.kernel.org>; tipc-discussion@lists.sourceforge.net
Subject: Re: [tipc-discussion] [net v3 1/1] tipc: fix memory leak caused by tipc_buf_append()

On Tue, Oct 27, 2020 at 1:09 PM Tung Nguyen
<tung.q.nguyen@dektech.com.au> wrote:
>
> Commit ed42989eab57 ("tipc: fix the skb_unshare() in tipc_buf_append()")
> replaced skb_unshare() with skb_copy() to not reduce the data reference
> counter of the original skb intentionally. This is not the correct
> way to handle the cloned skb because it causes memory leak in 2
> following cases:
>  1/ Sending multicast messages via broadcast link
>   The original skb list is cloned to the local skb list for local
>   destination. After that, the data reference counter of each skb
>   in the original list has the value of 2. This causes each skb not
>   to be freed after receiving ACK:

This does not make sense at all.

skb_unclone() expects refcnt == 1, as stated in the comments
above pskb_expand_head(). skb_unclone() was used prior to
Xin Long's commit.

So either the above is wrong, or something important is still missing
in your changelog. None of them is addressed in your V3.

I also asked you two questions before you sent V3, you seem to
intentionally ignore them. This is not how we collaborate.

Thanks.

_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
