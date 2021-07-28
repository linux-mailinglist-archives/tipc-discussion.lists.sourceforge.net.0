Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D43FF3D8959
	for <lists+tipc-discussion@lfdr.de>; Wed, 28 Jul 2021 10:04:46 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m8eYO-0003R5-RE; Wed, 28 Jul 2021 08:04:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hoang.h.le@dektech.com.au>) id 1m8eY8-0003PA-TL
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Jul 2021 08:04:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GDVx2t2u3ksEFp/h6csQth3J7o3lu5kSHjQ/F/JL82Q=; b=QPEyN+cAy2eUGJgrWNUVLbaEDo
 3bQzWuHg8TvKNE/lSn6/1tdZmqZX5TXkZfQN0cY4bs/1GlZIQCTsIVhYvtBC2cM0rai1K/5/MOh4Y
 5RXhPqx4RuzLBP+4KjVxiYemAnGVRppquZd4oU9CFZeRI7Ees261aV6SE/mbgLCGUmlY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GDVx2t2u3ksEFp/h6csQth3J7o3lu5kSHjQ/F/JL82Q=; b=YG3ijBZrOeYC0LtyC0Gf/+FlG7
 awpI47kjp8GEX/Tji28dsz/vcnmqmGJc6kEBxsckm0Og/ssjsevhRxmjxspkMgacf3zpKitE62mZg
 uN5Rg8j+AhhzR2b4P6uF6bhTI4AwaGh29PK6XP59FPKXZlvEj9tRFqb2MaY3UrGuYwOw=;
Received: from mail-eopbgr40097.outbound.protection.outlook.com ([40.107.4.97]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m8eY0-005AyH-5T
 for tipc-discussion@lists.sourceforge.net; Wed, 28 Jul 2021 08:04:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ipVfZAnhTLLBIFJZlQ99Kk0Sv8a5oCnRTkkW9v27sOC0fQtXuDkjDrC4Tdh2ys6WUWWZhfIbFZdo3O4nppvD4I6FvpbVV8WG94jF9cINZ1TAY65KZ9A5I42W6CRxOCTDipDtYtd2hzRzRZ6iM+GMqa67E8891aGglbSmVfoAmlwzoRl1/0hpWUWF9pic5dMsD4lYAZH/R9Wx3Eb9VCA+ecVuRok6eZrx3s4begST94xdaHSG5H7dgA4dY0b/9GrocNIUMhd3Eb8DrqfffOcsy2zR4+mYLvb0/JKoRCP94RZ8IHvH25/Oq2l+0ObkVY3OB2A85YaaK2UbBcdSdXOjPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDVx2t2u3ksEFp/h6csQth3J7o3lu5kSHjQ/F/JL82Q=;
 b=cTg+lEHNtzYEQ5AGR5torLpHcLrM1xfnihoYa2PHZwZ64MYkgltpyb3HF2iM/VnD0KID5vZv9ApXpdc6hQcUSbqrvCF9jSkltcf5nT1csjkby06djT6pibts8zRxGHbN4AglKRYGGvOMlTRJobxTibd2jmZurlmXe1Fqvmuf2eeHM/RWtrcRd/oQU707cdYKRccmyD8MPg/1h5cUR6eZp6wA6tHNLAxVpwA6q90sCnctBevAhDIi8aeAYr2yR5D9eN8/F0W8f6OOkuSqZ5Dh8FbsXdekUVoEH8iIrARZQqEzqW7k9f4/oWnR2gL6RZXYRMypCicdbXk6xyGMRTh4nA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDVx2t2u3ksEFp/h6csQth3J7o3lu5kSHjQ/F/JL82Q=;
 b=BV4tJqyq8Y+0iN2H+lLTaBMuSu+BmdAbiVbSXmlEC3UqhkAqju5x59z8WkkySNLm0Lt9ghYoUh7TxqF6S7RqitsWNtEfnrlkc/rU9ETRR0NlDqLGf/XpX5VmUukjsLEUv/JnbjevwOdCsR12rZ11oVEstwZ6HsX187ZOXOvnOuo=
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com (2603:10a6:800:1b0::18)
 by VI1PR0501MB2560.eurprd05.prod.outlook.com (2603:10a6:800:6e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Wed, 28 Jul
 2021 08:04:03 +0000
Received: from VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584]) by VE1PR05MB7327.eurprd05.prod.outlook.com
 ([fe80::10c3:7a07:9dde:584%6]) with mapi id 15.20.4373.018; Wed, 28 Jul 2021
 08:04:03 +0000
From: Hoang Huu Le <hoang.h.le@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>, Tung Quang Nguyen
 <tung.q.nguyen@dektech.com.au>, Xin Long <lucien.xin@gmail.com>, Ying Xue
 <ying.xue@windriver.com>
Thread-Topic: Strange behavior in socket.c::tipc_sk_enqueue()
Thread-Index: AQHXgz3UnYm+DpYhFU6/1g8TgTfjRqtYBpMA
Date: Wed, 28 Jul 2021 08:04:03 +0000
Message-ID: <VE1PR05MB7327213565000B4C9F672DE0F1EA9@VE1PR05MB7327.eurprd05.prod.outlook.com>
References: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
In-Reply-To: <7420c234-2b8e-9c62-5b4a-e10998284b35@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c0a3835-eeeb-4f56-19ec-08d9519e43fb
x-ms-traffictypediagnostic: VI1PR0501MB2560:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0501MB256085738FCF6A4DF33A2E7FF1EA9@VI1PR0501MB2560.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jh4Bckn1msM3gLfp2cHAeYVHRuIA5zQEbt29XTpzvidZYJANMsOnf+5IU28oxdsGU2a+unvLahDE0oPpRcLFO+mTaCJcnZyffNjlAfwfbkaiMjU4zQjtcrEWXzV+vqcpd5QipgfHlDX09WefuNTLxQTPP1fwf+t4SlICl9mUoji0Bt4pRrqSpXQjv6mknvconE4W77cChDAURPqscS9ggcE3NNN4dX3eXOof4+xRX49hMDz2gDWqWN/G1PtlL0N6d5UvEMObv6zjH/SEPmtwmJIQHoQDGClNpmQYWZq9eXfNpwebjnAkP/+6fZax/jyEu4pjF9tm33wyYQ6nDYo/xvW75S/tHk1NJ0lcUZJaxWv0iPY5Ezhqrv5kr2Rk0P0+i69zaU5kqwNkcsFswfBVdte6hwDXfS3m6eRAAz+9BNWojFwXA7Kb/qWvk8wB6yadHBuKyd9XLZ9nwscI6jpkv46p9jWdmj8JKPicumUGkCpvLKSQrWeoNjLmVNeTFgDK3iqz6qT60cmOraVQUawxZXKMBoeXIqGwQxJiAEGbQqhj97axR5hMfpXTTCM1sdKtJvz1lRqsITWCn9mmgBu/LK5ZohSaYFWVUOs02FedI7YwXHKBmIUtvy7YgwDVylCF8z7FTVD9wbHRBxkw+kvMerMBvBmHYCQrNoL0mhMtUim6o2w70qmPNgc2Y/c0FVFol5X9BREkW33q2SSlTLt32A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR05MB7327.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(346002)(376002)(136003)(39840400004)(38100700002)(6506007)(53546011)(122000001)(8936002)(4326008)(186003)(8676002)(71200400001)(55236004)(478600001)(7696005)(26005)(76116006)(110136005)(66446008)(66476007)(66556008)(83380400001)(5660300002)(64756008)(66946007)(38070700005)(55016002)(9686003)(107886003)(316002)(33656002)(52536014)(2906002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZldGSkN2NmtVZS84WWFTWEVGUXN1MnFvUEN5cVY3aHVwMEhvQWJFS2VDeXhF?=
 =?utf-8?B?bmVadDhST1BXOU5pcmxFOEc3akVUN2xZaWJDcFpLWkxXUkFoUkl3NGJWaU1I?=
 =?utf-8?B?K25qamcybkJDMEtDbUxaSU9VTklxREtvcWdEL0hVMlFYNHFqSi90cmFrSlMy?=
 =?utf-8?B?NUtDMHpubVhCSG4xNEVZUzhKK3Y2WVZtSEZFZk1WUSswUWw0Ni9QK0ZGWVp0?=
 =?utf-8?B?ZW9XNURYV2JIU2tHUWVVa3RYYUx0VzVISjZGWnpOSjNFNU8yVlR3SUtaTXll?=
 =?utf-8?B?M2J0ZEFISHFZa094U3dCYmMyUzI1dllzKzduMmcxbTRjQ0VXUlNGaWJzM1pI?=
 =?utf-8?B?UWVVamJaM0lNVlJpbTdSWG5IL2dWK0lWSDJCbzZjeEZPN1kxVFgvT1lMdzBT?=
 =?utf-8?B?SDVORFlVWTJUc0lXNE82a2s3bmZKUkRDd09MYlJ5SC90eW91WjdheWdKWC9v?=
 =?utf-8?B?ZE5JYW1vOGQwbFdod01aQzJKYTk1Rzc0ZjVDeU5lUnRMNVVBTWVsdHo2bUlQ?=
 =?utf-8?B?OVlJbVVTMWViTHlaUXYwa00wK1ZHbm9pYWNpRFBQcFJtUzJGbnJhczRRdkRi?=
 =?utf-8?B?YXkwWFRjUEpUQ2lQcm12a0JUWWVXckNyK2RsTUpOM0dDdWRhRzVvd2xYaGNu?=
 =?utf-8?B?eVZoR1luakVjclpDRVRIZ3FLeFhzVEwvaHRFUk50aENWb2VOd3RKM2QrcUZa?=
 =?utf-8?B?cUdBeFMzMXJJOGk0eHNJb3R2NGtVVGUvWWhIUW5yU1NJem5iTFdJZGUreTFJ?=
 =?utf-8?B?ODcrKzRtZlJMMHpiZUF5OVIvQ3JuZWh1QzVmSmVDRlJUL0FMb1BJWE1DWDBX?=
 =?utf-8?B?UGZLdERUUThpWDg5SXUzcldBUHk4K0RqbnZ1U0poMEpieGNPaHUwbnFONUV2?=
 =?utf-8?B?MS8wem9VbGZHczNlNllWL0RZQW5Ld01vNmVUL21PbGg5cHhRa25tTjN0bk04?=
 =?utf-8?B?TlEzaER4ZVRUQU5DWjg0Q2tNeGpzT3JzRVo4OW1WVVo5UVU1SGxtMmdmSEhh?=
 =?utf-8?B?bnVINW5tWFU0d3JYenNBbWp0YzVXbDNhNUcvQ2NXTllqTit1VjRjai9lTFZv?=
 =?utf-8?B?YnU0KzZlQTFWWUdHd2RzbXNqa1VJTjV4Q2EyWXA4RGptUVJMaWxzb2QyVGI4?=
 =?utf-8?B?ZThQUy92VzZ5VFh6RHNCeVorUVJBa2V5ODFrWXdXRllBZXRKZ3pUclRZbDFy?=
 =?utf-8?B?YnV6RW9GaGxVRnFteVU3V3hmWDA3NVlyMnIwZVFMNnBwT2F5K2VmRXBXRXUv?=
 =?utf-8?B?SnZWTVkzTk8zbUFBWlVpQXNhNDdFOGNTdGpCUWNHQkFma3YyOWwvZm5yeEFt?=
 =?utf-8?B?VFNPVUZRdTlUVGlEaHFBQ1dSOUxKYW5PNGE4M1NsMmJvWGRnRGsrY0E3aWc2?=
 =?utf-8?B?anVVb0grSktwQitZZ2oxRlFzbUFXRFJlbEFudlhnR3JNMjMwSjdGOTFQSy9p?=
 =?utf-8?B?R1U1bzZhVU11QjJWYmZLS2J1aFBVVWovd00yZCtlTFpFZjZGa3J5STNoQmI1?=
 =?utf-8?B?Q3FNUkFUb0dGRjc3WFY1SlhIeFdKMjJBZlEyWkoyV0VXckpsQVNGL2YrRkF6?=
 =?utf-8?B?TXdHQVNDbHVtdzM3OUpNZktVNjVkbjM2Zm9Ed2t1ck1xWFlpV1lmMTEzaVlL?=
 =?utf-8?B?MlRzcU5tVzA3UXFvOUpsVFVlK0o0WTZmdnVCM2xOMXkrYnF1VDlSK1dzSklp?=
 =?utf-8?B?UTFqWTFFQlZubFYvNXcrQXZNV3ZLMzFnclUxQ1NUUGx3QWFzWFc0VUVnYUly?=
 =?utf-8?Q?4hcfj3AeLOsIc7ezSjhz6LKeMANkebOay0w2o/o?=
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR05MB7327.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c0a3835-eeeb-4f56-19ec-08d9519e43fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2021 08:04:03.5225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BAJZE3hn/s6RVI9U9sa8gqK1b8xvEWXviN0crRV3TgbCHflOmnCtbBKwZEWYAwk4ts7pIMtVKJoxlkWBAyN3Iu+cfgv0StqYujyYRWve3/0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0501MB2560
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.97 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.4.97 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1m8eY0-005AyH-5T
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

Hi Jon,

Let's enjoy your vacation.
Our new team member (CCed) will take a look at it. 

Regards,
Hoang
> -----Original Message-----
> From: Jon Maloy <jmaloy@redhat.com>
> Sent: Wednesday, July 28, 2021 6:20 AM
> To: tipc-discussion@lists.sourceforge.net; Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>; Hoang Huu Le
> <hoang.h.le@dektech.com.au>; Xin Long <lucien.xin@gmail.com>; Ying Xue <ying.xue@windriver.com>
> Subject: Strange behavior in socket.c::tipc_sk_enqueue()
> 
> I did by accident discover a strange behavior in the function
> tipc_sk_enqueue:
> 
> 
> static void tipc_sk_enqueue(struct sk_buff_head *inputq,
>                              struct sock *sk, u32 dport,
>                              struct sk_buff_head *xmitq)
> {
>          struct tipc_sock *tsk = tipc_sk(sk);
>          unsigned long time_limit = jiffies + 2;
>          struct sk_buff *skb;
>          unsigned int lim;
>          atomic_t *dcnt;
>          u32 onode;
> 
>          while (skb_queue_len(inputq)) {
>          if (unlikely(time_after_eq(jiffies, time_limit)))
>                return;
>          [...]
>          }
> }
> 
> At the moment we call time_after_eq() the two jiffies often
> have already passed, and the skb is not dequeued.
> I noticed that tipc_sk_rcv() may call tipc_sk_enqueue()
> with the same skb dozens of times before the buffer can
> be delivered further upwards in the stack.
> 
> Needless to say that this cannot be good for performance.
> 
> I believe the value of 2 jiffies was hard coded at a time
> when machines were slower, and a jiffie represented a much
> longer time interval.
> 
> Now it is clearly too short, and should be replaced with something
> longer and more consisten, e.g. msec_to_jiffies(2).
> 
> Can anybody look into this?
> 
> Also, I will be on vacation the next two weeks, which means we
> should cancel the bi-weekly meeting next Tuesday.
> 
> ///jon
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
