Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA07540419F
	for <lists+tipc-discussion@lfdr.de>; Thu,  9 Sep 2021 01:11:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1mO6iq-00062Q-Eu; Wed, 08 Sep 2021 23:11:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1mO6in-00062D-KY
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Sep 2021 23:11:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kL3mmTwtggmbV5epVo8f4Loli/tfJzS/bqre/zX60B0=; b=V4fXX65M0HMBnC5KBbIJ/ibN8t
 aSLcUJI9HkC40pC0fD4KFF897vaHsABBO+yEp0Y0A2AJimlvE0RJRB08mdgi0dlUx2YnotUCSSFj3
 bCDztpEYeaeo16bSRqrKbZKy0F5w3HxZWXSzCEc9lH5IJKjlW2YHX7ECJL0G6W79XpDg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kL3mmTwtggmbV5epVo8f4Loli/tfJzS/bqre/zX60B0=; b=Mv/22EG6hi8OnVU2NrWSO/WJP1
 j0nqF4iTrE74BJ1f6R0hcFIAwGQXxGEaRuRyZ81KTEINFkjV1j7k0bImu9hFDeOcAdPg8AQO+FF11
 o47TahO766wDuNHfdPKOtSADDA1FznBFmpY/I6ot6hnHU+DwJYHgReHDxlLuUkJg2JUA=;
Received: from mail-vi1eur05on2101.outbound.protection.outlook.com
 ([40.107.21.101] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mO6id-0000D0-Jc
 for tipc-discussion@lists.sourceforge.net; Wed, 08 Sep 2021 23:11:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDoq6IZExTEUgzk7+BqX3Y8tFimX11Jz994/n5f3bYqip0yEKqiW75jvxglpUT0RB4eVQwe94GXhpYAyChIAeEX/7aRqCXQ8sBLLoqJavTZvn1eTTEsXW4AuBiSbaeL4ZpAmesQjjfgS+j6/1dcKfpnD8FgXhxFoneFMxxz1YHNclNaJDo0PWfK6AIc0LqZR9jHp2ZPyatzUruqN11qfj+jfjPW7UQ8gd/R9ANuVjDaKZct8GraT1lUW/BlymtflU6bip8N69+JE8+/8JjTjGq4O4kTYPzMoCgqzDaWpa7mJOQmb4ffLL4hD++xH6VeXT4ekVdZXqoXtS22h8nnb/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=kL3mmTwtggmbV5epVo8f4Loli/tfJzS/bqre/zX60B0=;
 b=DsUGa3J6nLny2i0TVXPcKK1MG+PsSwJqm1LkBsyzVQUpnDatBuofwEvThLB6FSrCa4duQO6X8HaklLma8CPIdqdKt5ujqnLFJDMFK9voGKsHFK6O8hhfCBYK7Qo61BMPXd8Xm0CW6aXNxGc98i2sP7enKafkuk94mYNjZzV+mq4OZuTHiviTiRwd4FDqQBnMtcnVEryib6rUM/lvApzxsTR6mSjiLmPGIRAYjUszMxoxgXxNfMyxOwjGHMeGZOq+LxcW99j243sgjlWccDg6If2Kt8fl2j/qFj36OVfB94TA3oyXyno1xYDxDhagTcgUJwd2jAWh/D+4+wvM70IbaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kL3mmTwtggmbV5epVo8f4Loli/tfJzS/bqre/zX60B0=;
 b=o8RbR0StGOCrhw8RsX7lK3omxN3akoUfpOfYfG7YPqA52PzXKykYPBA1j7N/xWOzAIqCS5Sir1yNQ5AIYxqEoVa29eg5oee24Cb7jMijKfGOgCYs1ysj9jQYwYP6IFjXSsXiUTt5tKabEsYo5mdnEGWjz+6L9PgF0Qz6oCNYMRs=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR05MB3407.eurprd05.prod.outlook.com (2603:10a6:802:1d::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Wed, 8 Sep
 2021 23:10:49 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::31d4:18eb:d210:dce7%7]) with mapi id 15.20.4478.025; Wed, 8 Sep 2021
 23:10:49 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Tung Quang Nguyen
 <tung.q.nguyen@dektech.com.au>, Xin Long <lucien.xin@gmail.com>, Ying Xue
 <ying.xue@windriver.com>
Thread-Topic: Strange behavior in socket.c::tipc_sk_enqueue()
Thread-Index: AQHXgz3UnYm+DpYhFU6/1g8TgTfjRqtYBpMAgDaGX4CACF2+EIAEFDIAgAAGwpA=
Date: Wed, 8 Sep 2021 23:10:49 +0000
Message-ID: <VE1PR05MB7327D5E512186D30CC4A9A37F1D49@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
 <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <1ee6010c-144e-bd63-1698-b69ca78df4c9@redhat.com>
 <VE1PR05MB73276584E9198D9E40246785F1D29@VE1PR05MB7327.eurprd05.prod.outlook.com>
 <13028817-f2e2-8eb5-d036-4e41d0b136f2@redhat.com>
In-Reply-To: <13028817-f2e2-8eb5-d036-4e41d0b136f2@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a95a726-7fc7-4052-ed5c-08d9731de5d4
x-ms-traffictypediagnostic: VI1PR05MB3407:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB3407B6417FCF803FD6497E65F1D49@VI1PR05MB3407.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ujzivxafAbFO/jiXAwGNDTLL9GyRfScZgHMUacp0X/yjHwHvC3vrrWAMyK+bZB5NwGUu4AcOcKkbgqwRfoBk5DSSJq1ytGyiJx4aesS91qEvwn8b5B7PCv2FvGkjnC/A1UHIX5HnwFK14xa7FcAv5crZphYbUA/l1qoDv6AjZdS6WVh30RUc9giqt26KV3GjdZ3aMgBwvR7hPF4h2yZ2aelyLNuSQ5Iak6i/xIaHFe5hwpb2BDtRhmW0qcVr1dgrJKNHXOSsKkU1EbkMqE2u0u0uezubS12C6A5980PO+7Vo0474ehykPyjxwVogowTolEuNHkRnbaFd8C63WvhiIJ0drd1io4Fxicflt96ix/0YiHKz6bFPY9Rt5M29BOZpe0IhqLYap7mv5lpWJxIr0LJBNI9HXy+MTxEsMvbO1hGx9/iZWAkjnITBOSdX+W5pKEcZjDcxSudTJ4+9opKsqsUsXVB5fLWfFTse3By07SCZiwGMHHcyMQiISajLvKOP39S+pphM9boD3gvhB27oCCF1kx1zb9i6rENja2bDXfiF1pLaUXZR8anrtlg+jV47b391H7lhLQIMnhmrYJvoyNzoXpCnizl+wYDSMYL7Hjo+7wCMvLC1oZr8sIdl/Q0ltqkwfIANj7lSDmRn4912aht8cHN6BbWp7oPWsUoAk7vwuuHjqdpTT2NP2fHyTFKa7JSYgqjmngtbNV+28hgBgA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(376002)(366004)(136003)(396003)(346002)(55016002)(316002)(8936002)(6506007)(110136005)(2906002)(4326008)(71200400001)(38070700005)(86362001)(66476007)(478600001)(66446008)(55236004)(52536014)(7696005)(5660300002)(9686003)(33656002)(66946007)(64756008)(66556008)(53546011)(26005)(8676002)(186003)(83380400001)(107886003)(38100700002)(122000001)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RWx0Y1V3ZzlaanpsVlN0Z0dSM05pU2h1WCs2UnFxU1FRV0M4cFVxTDZMQ05T?=
 =?utf-8?B?Y3J6L2twcWc0TkJDWm5KeVhtNlB2VkN5a3ExK2RNVG9RUVh3OVBDbFJnY2V1?=
 =?utf-8?B?OG1BZEl4enNnVTh4RGE4b2lFb0txdnBvaFNCZDNXdmtvU0FnL3JvUEdVUFcx?=
 =?utf-8?B?OC9yaUI5NktoTTd1azBSMG90WENTRFc0WjRzTEdRVzJ1Vm1hMlpTRjlEaXpU?=
 =?utf-8?B?REtiVW5tc1hsNEdNTnhDTTZ4TFd6clVYTlpKR3F5OEtTR3VseEczNkl3YWRI?=
 =?utf-8?B?Um1DTnJEOHczNFkreENkck0zcWlhVVlCOVFhWWptV3ZOMzM3bGtGcUVwTHJ3?=
 =?utf-8?B?SGFybXBqaFhaZktnU3ZCUTFHWHJabzFJcVdtb1lRbmt4bzlYS0NQenNGSWsr?=
 =?utf-8?B?VU5FYzJGUzhNRSsyYUppdEsxSW5RRU5ITmlRVThROGRmaXlaNHNNYnZhWjFR?=
 =?utf-8?B?Vm80NWU3OUs3Wllua2ZXdksrZ2w2Tm96ZEdIeUVWL1lMQis4anZHVlRMZFRZ?=
 =?utf-8?B?MXVsZkg3R01VNVo0SUx1Z2NpU3lmaUdQbExDWlRqWktWY1IyN1QxOTd0a054?=
 =?utf-8?B?bjROVlRLR09YN29odDdSZkN3WFg1L1JhNmNiTzZmNWxwandCY253QldvT3du?=
 =?utf-8?B?ZWdzbEZMdk02QTdaMVV2RjlNYVhKVVJLS1dxWHNMa2JFVGJJM0MyazI2TUFM?=
 =?utf-8?B?QzhCUy9CYjZQTUFBUVErM3ZRdUxDS2ErbDhJMHNQaGttV0JnQmpHWDFISUxL?=
 =?utf-8?B?REtVTzN6d3EzMUcxdVhrQkd2Ykg1ZkVXUTdiYVVzRnEwRkU1QnVkOUVCcENu?=
 =?utf-8?B?VVd2UEdESVlrTXFCczViL29GNmVHWUtVWFhwRmtFeWpDOW9NUkg3ZkhLcElH?=
 =?utf-8?B?cGNsTFl4dURzcVNKZHdMbHUxUDNaMkFleUdybEdLR3VDY2FlQy95ZTVBYnB4?=
 =?utf-8?B?dVlWcll6S0JYOE40Yk5PSE1TWVNHdmVvK1ZsN2NoeHVOa1N1OGo0STUzcVNp?=
 =?utf-8?B?T0FIUmJBbjk5azEydmxpQTV6ZC84d1BBQW40VEN0Zms5VW5LSEhsWWhqMk0y?=
 =?utf-8?B?WEpybUMwandVMjA1d1F0RWcwYmc2anJKTGlQVDBtN1ZUbXUzWWtQWVBXZlpW?=
 =?utf-8?B?RWxHY0RRc0ZGdlRWUmQ4U1h0Ym40bWpkZXoxUU1wcUt4SGNZbUpndDlzR2tP?=
 =?utf-8?B?cVFyVUJwamJZcUZUQUwvMWd0TXB6TVlyWGd2dVlhcHBZZWhpb3Rjc3RyNnND?=
 =?utf-8?B?ZHNkMlhwbjRyZDZDckY1Tk1ucWNvMVFWemtUdUJjM1ordEpGMnc2TjVWRVc2?=
 =?utf-8?B?K2pUYjVtSnk0dHdpN1ZCUytwTGxTY3QzSFZUbU5YcDVMeGRVcW5Ib0VXVnM5?=
 =?utf-8?B?VmJVb3UrSVZWMmozNmI0ck5Rb24rWEZDVVE4MHh4RDBZemtnYlFoSWNaMTcz?=
 =?utf-8?B?Z3BmL2x1cXBLd0ViM3ZUZGRQeEFPdld5Z285TWJ3WUFzZnBTbUFvQUdrVTlM?=
 =?utf-8?B?Tk5yQ09rYmFpUTJtYU1OejYrYnpWNDgyTnA3SlA1b3pZSEFnbUcwc2NXSFdG?=
 =?utf-8?B?ck9KK0VvbkYyc2ZEUmY0ZmZlcEFrVkJQSGk2Y1c5ZWZSenpuU2VBaWFmYVZF?=
 =?utf-8?B?NWNJSDdiYlF6T3lBK0ltUlE0eVN0eE04NDFzNExGZGE0WGkvdUhxMFdEMjAr?=
 =?utf-8?B?WkVEUTZtM2d0d1BXNkdzbWEzR3pWUkNBMFdocC9kQTRNNzVzRi92Q0ttUVJI?=
 =?utf-8?Q?SSgFGNMA7fE3dpPYsI=3D?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a95a726-7fc7-4052-ed5c-08d9731de5d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2021 23:10:49.5175 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LaiHdHFAXCuqGHJq8Dr/G/W9nGD6qAfAb+9hVmW7jjYKN8mnsSou2XAhjWs0W9Tr3JOia6coj00nrSewJrgg0GAlYZ2ECfEj69So+D9KOQw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB3407
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.101 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.21.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1mO6id-0000D0-Jc
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



> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Thursday, September 9, 2021 5:42 AM
> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen
> <tung.q.nguyen@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
> Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
> Subject: Re: Strange behavior in socket.c::tipc_sk_enqueue()
> 
> 
> 
> On 06/09/2021 05:02, Hoang Huu Le wrote:
> > Hi Jon,  all,
> >
> > I did a test by setting two variables condition in range:
> > - time limit:  2 msecs ... unlimited
> > - search depth limit (sock's skbs): 2 skbs ... unlimited
> >
> > With above range settings, a maximum sock's skbs can be enqueued around 12 skbs regardless of time and search depth limit.
> > I also combine the test with iperf TCP traffic generated and the result looks the same.
> >
> > So, I don't think we need to apply the search depth limit condition and/or longer timer in this function, just 2msecs is enough.
> > I guess this result depends on kernel schedule. What are your views?
> 
> I assume your test was done with many, e.g. 100 connections?

Yes, I did the test from 1 to 150 connections and combine with/out other traffic generate (i.e TCP).

> 
> ///jon
> 
> >
> > Regards,
> > Hoang
> >> -----Original Message-----
> >> From: Jon Maloy <jmaloy@redhat.com>
> >> Sent: Wednesday, September 1, 2021 7:39 AM
> >> To: Hoang Huu Le <hoang.h.le@dektech.com.au>; tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen
> >> <tung.q.nguyen@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
> >> Cc: Huy Xuan Nhat Hoang <huy.xn.hoang@dektech.com.au>
> >> Subject: Re: Strange behavior in socket.c::tipc_sk_enqueue()
> >>
> >> Guys,
> >> After our discussion this morning regarding this problem I gave it some
> >> more thought.
> >>
> >> What if we simply limit the search depth in the receive queue to some
> >> fix number, 10, 20, 50 or something and return NULL if nothing is found
> >> within this range. This would be a simple stack counter inside
> >> tipc_skb_dequeue(), and would cost almost nothing.
> >>
> >> If you experiment with this, of course in combination with a max limit
> >> of some milliseconds as we also discussed, we might obtain acceptable
> >> results.
> >>
> >> What do you think?
> >>
> >> ///jon
> >>
> >>
> >> On 28/07/2021 04:04, Hoang Huu Le wrote:
> >>> Hi Jon,
> >>>
> >>> Let's enjoy your vacation.
> >>> Our new team member (CCed) will take a look at it.
> >>>
> >>> Regards,
> >>> Hoang
> >>>> -----Original Message-----
> >>>> From: Jon Maloy <jmaloy@redhat.com>
> >>>> Sent: Wednesday, July 28, 2021 6:20 AM
> >>>> To: tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> >>>> <hoang.h.le@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
> >>>> Subject: Strange behavior in socket.c::tipc_sk_enqueue()
> >>>>
> >>>> I did by accident discover a strange behavior in the function
> >>>> tipc_sk_enqueue:
> >>>>
> >>>>
> >>>> static void tipc_sk_enqueue(struct sk_buff_head *inputq,
> >>>>                                struct sock *sk, u32 dport,
> >>>>                                struct sk_buff_head *xmitq)
> >>>> {
> >>>>            struct tipc_sock *tsk = tipc_sk(sk);
> >>>>            unsigned long time_limit = jiffies + 2;
> >>>>            struct sk_buff *skb;
> >>>>            unsigned int lim;
> >>>>            atomic_t *dcnt;
> >>>>            u32 onode;
> >>>>
> >>>>            while (skb_queue_len(inputq)) {
> >>>>            if (unlikely(time_after_eq(jiffies, time_limit)))
> >>>>                  return;
> >>>>            [...]
> >>>>            }
> >>>> }
> >>>>
> >>>> At the moment we call time_after_eq() the two jiffies often
> >>>> have already passed, and the skb is not dequeued.
> >>>> I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
> >>>> with the same skb dozens of times before the buffer can
> >>>> be delivered further upwards in the stack.
> >>>>
> >>>> Needless to say that this cannot be good for performance.
> >>>>
> >>>> I believe the value of 2 jiffies was hard coded at a time
> >>>> when machines were slower, and a jiffie represented a much
> >>>> longer time interval.
> >>>>
> >>>> Now it is clearly too short, and should be replaced with something
> >>>> longer and more consisten, e.g. msec_to_jiffies(2).
> >>>>
> >>>> Can anybody look into this?
> >>>>
> >>>> Also, I will be on vacation the next two weeks, which means we
> >>>> should cancel the bi-weekly meeting next Tuesday.
> >>>>
> >>>> ///jon
> >>>>
> >>>
> >


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
