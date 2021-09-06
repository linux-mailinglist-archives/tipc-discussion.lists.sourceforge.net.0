Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D477340188C
	for <lists+tipc-discussion@lfdr.de>; Mon,  6 Sep 2021 11:03:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mNAWk-0001Am-38; Mon, 06 Sep 2021 09:02:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mNAWi-0001AI-Sf
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Sep 2021 09:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/9CySqZH1FDd+B0KvYd+SrxWwlcpL9W4F2oJtV6KcfQ=; b=mFbO4usf1fYYX8NUI4SAUJjpJY
 2ELgogLybzn2MtAz9+KJZVfq5Bul1PGjmL2sprfNGbT8uy4JJUK9tOvyDFk/p2//L9AKIuPZULcaT
 vHLnhktg/85U3E8uYJBsFt6UoPfcutm561TyDkUKkUePrMUwtxI+H5GobMjYBw1GWiAg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/9CySqZH1FDd+B0KvYd+SrxWwlcpL9W4F2oJtV6KcfQ=; b=HTayrBUp4N9S8AL25UO44NPyWe
 vbdZnT7Adt+9wmKHOZxEZFJVSoN33+o2TWXiQOD1RNeJQa1bFjwFygF6WgevuNZQVLd+ZwSoKqsiF
 ucJv8AYDyUzcPrdwv/DgPifLTS0zRKw8ovEbq2hUV014BBUbc4JHiAwphCuzXiWghj3s=;
Received: from mail-eopbgr60115.outbound.protection.outlook.com
 ([40.107.6.115] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mNAWc-000820-AL
 for tipc-discussion@lists.sourceforge.net; Mon, 06 Sep 2021 09:02:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bHXdLM73H+ncLUygutnsfm56JlmdUBfv4znfTk8OhTUroa+7abwZ5rbPylMqP0+iO0IChJsJyqvZX6ydoPDVs7YLVhL9wEbH/BxR5VsurUyhmZBc4euQQKBAz6ozp9E6wFBKC9rEuYX3UhN0OZPELIYKEo2m9HmDHhfwhHJzMAQVnTgeFixO/WhQv0MjRXWS47qOJwl1swjjgA3vepH7A76zg2kcTO+e27MOkwjB1+Pmad7dHbls7BRYaQwpDQSpH2p4FJORj7G/Qk2uoJSpgC9/PL8/CZuYg3i2MTwKG+Gqf4NEWX6zXsBAhoNRcvF6ozojFAwGs+L+/mE6hl1UGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=/9CySqZH1FDd+B0KvYd+SrxWwlcpL9W4F2oJtV6KcfQ=;
 b=lKvL4eKSjfigeRxNbE3PEoo+OYleXMB5V/pn9gNQWtyCDc44lx7SdinckMaBZxoIq0dEXWIPszu+LMM+DGyx+8rL4mH44vw/jesHj+KeR6cAVMY76va4nArnifruXYLgCBrT3pybx7XF11JuORARA2jZzhhoR1Ly97O6tFHVcu8cD9oNv5rBtbMDXbr7FjbZbzruhFTX2IeRuhcvg9J5qxBxZSHIBu+zycxYVkAvyTHw0r++fVV+G+5DauDi+9FSY5yjgNes445d/hFDxcOo7lgj1dgbxJtkG8O0ptLj1kZE82lA0/4zIMnFLAsB2zS7z9KuJJ/nyrGNO+1EuIR0+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/9CySqZH1FDd+B0KvYd+SrxWwlcpL9W4F2oJtV6KcfQ=;
 b=ocaecLHtBslQpzaWM7AXy5/eHNUtXH/NN5bOgkvMYmRapwWAJ93ENCIGETdp/eNmxTfootYkcneDk0taY3y4zNY1f5kN274lAF1SR+sMJk89v+fiHLDHLBHxfGrZlVqMKp3csFcZj2whfiaIqFK3oGTNeHil+HPapzCj1z92M/k=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB6862.eurprd05.prod.outlook.com (2603:10a6:800:18e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.20; Mon, 6 Sep
 2021 09:02:37 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7%7]) with mapi id 15.20.4478.025; Mon, 6 Sep 2021
 09:02:36 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Tung Quang Nguyen
 <tung.q.nguyen@dektech.com.au>, Xin Long <lucien.xin@gmail.com>, Ying Xue
 <ying.xue@windriver.com>
Thread-Topic: Strange behavior in socket.c::tipc_sk_enqueue()
Thread-Index: AQHXgz3UnYm+DpYhFU6/1g8TgTfjRqtYBpMAgDaGX4CACF2+EA==
Date: Mon, 6 Sep 2021 09:02:36 +0000
Message-ID: <VE1PR05MB73276584E9198D9E40246785F1D29@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
 <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <1ee6010c-144e-bd63-1698-b69ca78df4c9@redhat.com>
In-Reply-To: <1ee6010c-144e-bd63-1698-b69ca78df4c9@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57bbbe2d-e589-4970-211a-08d971151263
x-ms-traffictypediagnostic: VI1PR05MB6862:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB68625E1F1DB75D0263C90895F1D29@VI1PR05MB6862.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2P0coo8SycUYRZ7eF9LLuR2ubkoDNcYTHq50CmK+hNGso/H8upLFDa7Gfl/c5WCREZo8ecn07g1rS0olsS9AzXHCg+uhjawjGfIOVxYqEGfOmR/qocq1IEklGOTJkrAZETz5KGuE9nRPSHH4INlOqdCmE0yOGXr5GXefZEAuaYsh5oHnABYYOnlAAIfiHG7brTQ8OXS0DWrlnR3FYTKFzu6TJQFbrekLSfBr5ZaR6qeaW2AH4QuHh6PHX+FUn1NIGQWZKuoOGi2yOO+s/93wXOhj0aGqAMVPn+rEVtyiGh047mztzO9JfYTt4m1VWCp6Vx6wCuSFef0Y6EMf9L6DzmSTNQ9Li76es56JFgZI8cmYrmBC+/ucGLXk39jVNxDRROIIEc0unCrwbBu0rrIQgp8ssu7XAkaq81SED+TAjdm0PYE46LjtEh5ju9WwciafBMUz6b9BuUjyaG65Ay2TKxF1y9AfKJRHqo2RK6Z/LQ0UQFCdMU3TRfm1qCyDCqCFrT2SzCvaHzEkhHuu0S0hOnhC3M+ALGGVsfsMkgI2A7Y7s9N47PCugpWlAzL69ZKp8PxQVa4M/73WE5twvj3HVgLcg5FC1YPTU9IqkWf5+DXu4HYj7uGh/yc8IA3HlsUWYrKKVEjCuSSDds+WfjgpbIiQmKXQwuqZW3legUDaw7RvbGEglt+QSCILr3J8hBu8r17hO49+0SfNowzBxQBuWA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(39840400004)(376002)(346002)(55236004)(86362001)(53546011)(110136005)(6506007)(9686003)(52536014)(8676002)(5660300002)(186003)(71200400001)(38100700002)(38070700005)(66946007)(33656002)(76116006)(4326008)(55016002)(83380400001)(8936002)(7696005)(478600001)(26005)(107886003)(66476007)(66446008)(64756008)(66556008)(2906002)(316002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmQ1SnFWY0NObTh4c0ZOTzlBWXVRNnZUR3Y3S1A2K0VNZEVybWFneFJON081?=
 =?utf-8?B?K3Z6RlhHcHJFVGJFTGU0WVhYeC9mei82ai9HZUZJWk01ZlZPQ3FhZ1hrdmty?=
 =?utf-8?B?ZVhzY0lmMDJ0NnNKLzFwNWlNaW1KMlEvWC9aYTlVeGJOTnp4aTdwYjlIa0xS?=
 =?utf-8?B?b2Q5VEV3MllJS0xSZkJ1cUE0RWdSdDRaK1hkbXhLYXVqOWlQUTc4UnlXZVVL?=
 =?utf-8?B?ZXpnd3p3czkxaEVpZkFOR0FGWE1zZWNPc1EvVUl2aFRmZ2NFV0RXQ3BaN2Fs?=
 =?utf-8?B?SWVJUXNhUnRMZ0xNakIvMEtndEhkaGc1bDBuWFh1alJja2xQdnN3VWdXOUhU?=
 =?utf-8?B?S2ZyMVQ3M01ZSmk0Y25JRnd2SGFJMXlyUjRFeXNqTUxMaU1qVUZnSmNUVXRQ?=
 =?utf-8?B?UWZwWHJod2d1Q1ZYT2hIZGZYd1dDOTZRWEZBaTcwcUtkYlpBY3JXYzUxUmd1?=
 =?utf-8?B?YmdiaTdSNmJyZGpSSkdTQXROcnVRaTZFOWZUZWw4R3ZXQlVIUnd5Rm9PeWp0?=
 =?utf-8?B?SEZOV24rREIzN1FNYTA2NXE3SFlXZnVUaWJDVkx3MWh4K29iQzdvRGNxeXBX?=
 =?utf-8?B?V3psMGw4dnRVN0tWUEpjdndVclEyYXI1SElDUjg3alBaR1p0d3hUcTJvMDBj?=
 =?utf-8?B?YXRjbEVwMHpBNlBrbU5ESVJqbHNsKzRSbGNPOWRKN3RMVVBWOE1Wai8waEdR?=
 =?utf-8?B?bGsyNDFmZUhVV0FXa3JjWXV4YkhXaFN6cG8vdFp0TEVteUZZZnpJTWNtK3VU?=
 =?utf-8?B?aDRWRytrMm1xdnRKWElGOGZSUlFzdDFlaWVrcFRjL1plRllYVXl0dEl4bk5B?=
 =?utf-8?B?b29wNjFsbzZpWkRjZUIxWU5YYVNxU0NaZ0hvTi9RRXNPY0xkbjRQb0lTZXRO?=
 =?utf-8?B?eFhZanJUeWs3WTdaRXB1YTdTM0ZSQTVPZFA2d1kwNWIrbW8xZ1V4cTZmNjNV?=
 =?utf-8?B?Y3FQTm9WRWVPSUFDUDdtM0Z5YWdhRlpqN1NCTmNLQzlrUWt3cmhJQXFwdHUw?=
 =?utf-8?B?dzZqcHFlUDZjdnFzVVVhaDR2NzdHbnpYTWQxRU5Oc09DTytXclUzUWhIS1Yz?=
 =?utf-8?B?YVgvd0czL2VOeWVDMGs5ZXQwVnZLY0drZlUxblZabHhSN0RGYUJsVEpGYWw3?=
 =?utf-8?B?dXVwcTRhMzVNU3lFRWdFMHdkOUk5WHdtd2hVd2FENWRuZHIwdEVFbXJudzBH?=
 =?utf-8?B?UkV6Y0tSVmVPOTRKVHAzVm9mcnFsbVpLRlljaURxNDRnUHhLKzZLWFFKOExl?=
 =?utf-8?B?d0ZoUkFDNG1QQ1R0d2NQRFk0LzNzYmJEOGFDZ0hrMGRON2prejdqNkQ4MDNE?=
 =?utf-8?B?Y2JkdWIvOW9SWDladlh3eW9JTFYrUDI0eWRDYytOZEJMajFxT2NzOWVzcXFJ?=
 =?utf-8?B?YXBvcTNjNDJCcUpDUXVrL0I3RXB2QUFjb0JPRWFYSjFnVHpzZDRsRTlWUDFp?=
 =?utf-8?B?eFhpbklUSXNkL0ZoWVhPaWwrSERHdWF6M01FZnZDckQyaEsyMjRvV1JHQVJW?=
 =?utf-8?B?VjdHMHRYZnhIRFJUdkNrVDEvQkFkcGFFUmlJbzY5bU9FRFlFY2N4SmpMK1lO?=
 =?utf-8?B?UEhhZXVTbno0ZkJ2cGZhYmkraFJhL1VIbEtFTGZ1dnZRanFRVW1JSC9XRERU?=
 =?utf-8?B?MURiNXBKZ2t2aWZFdEs4cnRVTHRyV1VuRW16TVhma3YrOFZGNFVTYlgyL2U4?=
 =?utf-8?B?SXlwQ0kvWHhXOXVkNVpzWjFSMmFpYnFXdmV3WHZjM2IvRHhJZnhEOWRiVjQw?=
 =?utf-8?Q?uB+gBa6qT9iOah/0jHHH8HjlGzMatvlQEadRtWi?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57bbbe2d-e589-4970-211a-08d971151263
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2021 09:02:36.3626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QlGMh880fF3my35VhlUoO4DcTXMRnUA+yYldOgS6M7NP+H6EHt0IytFXJt5842hKCvrDNhIJMYw2PLrI/F0BFMGCG5Bm3lUDHWLkXl8pBRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6862
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.115 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.115 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mNAWc-000820-AL
Subject: Re: [tipc-discussion] Strange behavior in
 socket.c::tipc_sk_enqueue()
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
Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

Hi Jon,  all,

I did a test by setting two variables condition in range:
- time limit:  2 msecs ... unlimited
- search depth limit (sock's skbs): 2 skbs ... unlimited

With above range settings, a maximum sock's skbs can be enqueued around 12 skbs regardless of time and search depth limit.
I also combine the test with iperf TCP traffic generated and the result looks the same.

So, I don't think we need to apply the search depth limit condition and/or longer timer in this function, just 2msecs is enough.
I guess this result depends on kernel schedule. What are your views?

Regards,
Hoang
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Wednesday, September 1, 2021 7:39 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
> Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
> Subject: Re: Strange behavior in socket.c::tipc_sk_enqueue()
> 
> Guys,
> After our discussion this morning regarding this problem I gave it some
> more thought.
> 
> What if we simply limit the search depth in the receive queue to some
> fix number, 10, 20, 50 or something and return NULL if nothing is found
> within this range. This would be a simple stack counter inside
> tipc_skb_dequeue(), and would cost almost nothing.
> 
> If you experiment with this, of course in combination with a max limit
> of some milliseconds as we also discussed, we might obtain acceptable
> results.
> 
> What do you think?
> 
> ///jon
> 
> 
> On 28/07/2021 04:04, Hoang Huu Le wrote:
> > Hi Jon,
> >
> > Let's enjoy your vacation.
> > Our new team member (CCed) will take a look at it.
> >
> > Regards,
> > Hoang
> >> -----Original Message-----
> >> From: Jon Maloy <jmaloy@redhat.com>
> >> Sent: Wednesday, July 28, 2021 6:20 AM
> >> To: tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> >> <hoang.h.le@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
> >> Subject: Strange behavior in socket.c::tipc_sk_enqueue()
> >>
> >> I did by accident discover a strange behavior in the function
> >> tipc_sk_enqueue:
> >>
> >>
> >> static void tipc_sk_enqueue(struct sk_buff_head *inputq,
> >>                               struct sock *sk, u32 dport,
> >>                               struct sk_buff_head *xmitq)
> >> {
> >>           struct tipc_sock *tsk = tipc_sk(sk);
> >>           unsigned long time_limit = jiffies + 2;
> >>           struct sk_buff *skb;
> >>           unsigned int lim;
> >>           atomic_t *dcnt;
> >>           u32 onode;
> >>
> >>           while (skb_queue_len(inputq)) {
> >>           if (unlikely(time_after_eq(jiffies, time_limit)))
> >>                 return;
> >>           [...]
> >>           }
> >> }
> >>
> >> At the moment we call time_after_eq() the two jiffies often
> >> have already passed, and the skb is not dequeued.
> >> I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
> >> with the same skb dozens of times before the buffer can
> >> be delivered further upwards in the stack.
> >>
> >> Needless to say that this cannot be good for performance.
> >>
> >> I believe the value of 2 jiffies was hard coded at a time
> >> when machines were slower, and a jiffie represented a much
> >> longer time interval.
> >>
> >> Now it is clearly too short, and should be replaced with something
> >> longer and more consisten, e.g. msec_to_jiffies(2).
> >>
> >> Can anybody look into this?
> >>
> >> Also, I will be on vacation the next two weeks, which means we
> >> should cancel the bi-weekly meeting next Tuesday.
> >>
> >> ///jon
> >>
> >


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
