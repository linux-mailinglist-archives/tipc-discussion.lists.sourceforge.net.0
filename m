Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3568D3A284A
	for <lists+tipc-discussion@lfdr.de>; Thu, 10 Jun 2021 11:31:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lrH2I-0008AL-Tr; Thu, 10 Jun 2021 09:31:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <tung.q.nguyen@dektech.com.au>) id 1lrH2G-0008A5-Ic
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 09:31:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1+4oNigxKV1++DXBUQ0m1WQcTdOGw8utgDjEepjm3jU=; b=FariIB+FvhV1OQ80eCyEylhQzm
 yo+RuBFsqRtpTKmSB4OjgRNhkHrIG2ihud78hRmScAp042fSOqfXzkWGgUwLlNJMu8oADH4k8lC18
 90uJPVc4d3GtOzJOj/+YOYt49/sCanaPPzLYNLJyLjr6OV/7OWhTOU7gQGCZ8gNvSo0M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1+4oNigxKV1++DXBUQ0m1WQcTdOGw8utgDjEepjm3jU=; b=VooxnyP6rQtbaP6KcfTX6jDDlb
 TvdKbA832yzFBbpwLCwpmWRbY+DRclQuSb0t5tznJIo7yfxUqxlTiEp0rjROY41Oh7rIbFJQPze6n
 QnDGKET9UOx0ijyqE/JjLGuvpTzw/8WuyYNvhiNZQdIaC4r4C5SSGcP0BeA9eHqBfeCw=;
Received: from mail-eopbgr70091.outbound.protection.outlook.com ([40.107.7.91]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lrH24-0002Xp-Uq
 for tipc-discussion@lists.sourceforge.net; Thu, 10 Jun 2021 09:31:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FZl6gRlN8dSzzXjZBurXseULR/5OIBHWm45egDJgMblLEhDAyq3poTvFxvWQJ8NQlruRPqmsAuUzCLRotCIV9q+iu8HPOfWPSZuccqJKCiaT0Vd2WmLnTR6251AAd2I6DFXgBHw+fHLiUH1ZS5oDP+S7NLb95XxTc9CXvh12XuVC4AsEcx006FqA5keCGkYjZjdaJllbiDpaTNISND7JyVdmrTmtO/9uyYwFBxR1l3JLL4SgnmSjgg+1OPH2cpvPfdMdfbyVsKf4tzmFaxgKVd7zlvOmrmFe66g04XYe2R9/imhC4TAK7cRQUAipM5030dtdOpJzisJ+eLI8aFHT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1+4oNigxKV1++DXBUQ0m1WQcTdOGw8utgDjEepjm3jU=;
 b=Ax4aJ4yU6Dckj8N3iHP00gT15WWCUqMDgtqS891kERDsJRpz4G0Jchfql/lGjvZqz9OKHXSVYka7bQbwzXibfkepkJLwHNzGudiL29gakjMs7M+/N2Q95fzMVRsO2RmPPLP2jBqFR8dhjKGgfVXZ7aJCf2jgz6pd7/e9dPSOGdxPlb9/QHcKpNyePhJW9g3uzmVmCtzoGjwSgE7IqMTP0BvnzTxUFjYdqJ5umnbpAS6gBJOhkW5kUmvg2NPrSH+vTR9/Miia7AWKdj6NF11C1p1Xk5kBxtdccP6ZQ6aLI3hTPIF3FSlb6Q75L4Jf3TMlS6dluoOyUm13156BJo/zFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dektech.com.au; dmarc=pass action=none
 header.from=dektech.com.au; dkim=pass header.d=dektech.com.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dektech.com.au;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1+4oNigxKV1++DXBUQ0m1WQcTdOGw8utgDjEepjm3jU=;
 b=Y8pGauNShVvn3Oj3mJazI6Lrd5GWaAFJHc8drD0kuB7PI+B+LAyfWG8ShSAojaX2TPyRkOx+cVLfVEnSIvk+LOEaF4UMVqQ5fGBi+KHMtod/mOsa/n8JZC5WbFIJ7u13/gKiMe+j+U25Ds6JOmmjrOp+sEO2rL4YT5PYlQJ1S9o=
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com (2603:10a6:5:1f::18) by
 DB6PR0501MB2598.eurprd05.prod.outlook.com (2603:10a6:4:64::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4195.20; Thu, 10 Jun 2021 09:16:28 +0000
Received: from DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::ed1f:9927:aedf:b8a4]) by DB7PR05MB4315.eurprd05.prod.outlook.com
 ([fe80::ed1f:9927:aedf:b8a4%7]) with mapi id 15.20.4219.022; Thu, 10 Jun 2021
 09:16:28 +0000
From: Tung Quang Nguyen <tung.q.nguyen@dektech.com.au>
To: Jon Maloy <jmaloy@redhat.com>, Menglong Dong <menglong8.dong@gmail.com>
Thread-Topic: [PATCH v2 net-next 0/2] net: tipc: fix FB_MTU eat two pages and
 do some code cleanup
Thread-Index: AQHXXdi07gLrgxLiKkmo2mrs8uBAGasM9onggAAASVA=
Date: Thu, 10 Jun 2021 09:16:28 +0000
Message-ID: <DB7PR05MB4315485C3B19CA9F2D5F934488359@DB7PR05MB4315.eurprd05.prod.outlook.com>
References: <20210609103251.534270-1-dong.menglong@zte.com.cn>
 <672e78df-5bb0-78eb-3022-f942978138f5@redhat.com>
 <CADxym3ZCV94BzHviTxK1G5Kt1Z+1LbbNr6=B=9GjBqGfzrk_Kw@mail.gmail.com>
 <caa07557-985c-7e50-5b80-d8cdcd902e19@redhat.com>
 <DB7PR05MB4315396511FA6701DB6DAA6188359@DB7PR05MB4315.eurprd05.prod.outlook.com>
In-Reply-To: <DB7PR05MB4315396511FA6701DB6DAA6188359@DB7PR05MB4315.eurprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=dektech.com.au;
x-originating-ip: [113.20.114.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2b125ea1-1be1-444a-a37d-08d92bf06de5
x-ms-traffictypediagnostic: DB6PR0501MB2598:
x-microsoft-antispam-prvs: <DB6PR0501MB2598BEF67AD951CAA603E21488359@DB6PR0501MB2598.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T8nUGX39HTFVvZue+rfiIxmmQKDe2D0G7B/r4xFqQWW6JGQBJMJWBG6Ph2J0OuTal5UlXtFTIzD7FlQABmYZZHDFdTaly1KDKdo2xFC3eE54MaMljl15c8Dkdfw0cP2mbg+fPMRboK6n6qVXojwQ7D+cSMISQPfhcmsMYNoKXLSuZB3q+PFj3cMH/9e5SH+QaKiRK0oCrx7HygyciD1JrNvmUutScYHWKnHjfPdBolBexZnEyrRweX9QiFtrbArqWo4FEi3fRlYsTWHKN35Bra30eJGCV7FuCwVY8QpwcYQvvzoI553xtigT6nb7lXQuOPLbBJsHwSRm0Bw+NjJShGSEVe9F0nVWZVAYy+Oj+1r9lGRE+8GQ7FsJzmqdn1akG1YP1LryISRLyD2hQjUZB21zI48NNHb5hHw7n7qpPcCcMUnZ0+Q2WLGlyYyh0W/hOrNk6u1WOpjdpWLJ6h6VAL3rdHYKTDHc1Cz0oAyP6hhEIOQY9lyFr1lkWNma6EnY9OK2A7DaeKWBI5UoaDjCy40bV5GKtdBGpYDfVwNqgDuD2rT4XBAX/MH7G5EywztxF3z+7pbYoh2IqKfFTfjOM7EkSoXPfXGd257M3ijVr1o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB7PR05MB4315.eurprd05.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(39840400004)(366004)(376002)(346002)(76116006)(478600001)(52536014)(7696005)(33656002)(66476007)(83380400001)(64756008)(86362001)(66946007)(71200400001)(122000001)(8676002)(53546011)(110136005)(316002)(2906002)(26005)(4326008)(9686003)(66556008)(2940100002)(54906003)(5660300002)(55016002)(186003)(66446008)(6506007)(38100700002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VG5GS0I2cFl0Qi8yeGhSSncyK1hkZElhakFWVCsrbkV3RkdMMWpNTTlsVlZx?=
 =?utf-8?B?aW13WW0wdzFrNlNSUjBUQmNybzRtOHAwK2lPTG15N1hhYjRPeXA2RnVnRzV2?=
 =?utf-8?B?bURBK2w5TTJBekcrTlFSTFQyRUJZbXdXdGxFOWplWjM1U1VZUEhLajNOVERU?=
 =?utf-8?B?NjRhMHc2TmxROHhPOEdSb2Q2Um95L3p3MkFPd2EyNG85YWNvOVgxNlA5bFNr?=
 =?utf-8?B?ZWdYS3NycU9wMFhTQmVKUk5hTVEvVlhPRzJ1MnlDR2xWdzJzRW9mYnprSHZi?=
 =?utf-8?B?Y2Z6UExjRFpYYytTUzMrVzFTQ1A3aFExdzlKVXVVeUtwRmZKT2JoTEVjYzNa?=
 =?utf-8?B?UUI3SVZmTFZ2ckZmMUFBMWRVdFhId0lYL2trOE11bXlBSXFNenZ5RFhpOUkv?=
 =?utf-8?B?VDFRWTRaQUN3cjI5eFBYTHhHOHY1UkgvMEp2ZjE3WjBXZFEyT3crT2ZUMU1S?=
 =?utf-8?B?UkdiWjViRFJxb2lyTHRzZ0pJZU5VU3NrRHV6cDJmMnVpVkQ1Q3ErOEw0NkZo?=
 =?utf-8?B?d1V6SlVCbnN1czduOVVUN1B2ZGt3YU9WNFdYK3FPeXVFMWlkeW10WVV6OE1w?=
 =?utf-8?B?M1R6bFZUWXBtczBrNDFZOUNqMW1QelFMQytxUWVtS2NXTm4wdUpuUEhKWkNW?=
 =?utf-8?B?K0hxaWRBQnRJblUwa2p2VjJwcTlwVE5uMFF0U2toUWFpc1VTV2d5S1RDTmV4?=
 =?utf-8?B?bkVaN3Y2dkxCbjZwVUNCUExXRm9xYWh0eWl6UXhZdmJGdittMXB1d25TSTIv?=
 =?utf-8?B?M09OdkZCMlBDbm9ZTVdEaFZPNzZDV3JJY0xhNFlJYi9YTytSSFN0Ky9RNjd2?=
 =?utf-8?B?bUZSZjRteWtIUXphMWhONHFwbVJTRFBrNW1rdzg4R0tSVmJYWW5sa21PUFB5?=
 =?utf-8?B?TXdudXh1SjR2amxRMURWVWI2QUlLcUQ1bnZLaHNpY1BkTEpCeHNCdm5Sa01Q?=
 =?utf-8?B?ZU9PNnFjQlFJNTVwcUxyY2pJdmxwOXc2dURTdGwwT1hYdmQ4QzRvVktvSFAx?=
 =?utf-8?B?eG01dUtQQ3k2VmVpM0tLMGYzNDlmZW5hWnpzTHgzOFY4ZW44MmF6QzJWRkRz?=
 =?utf-8?B?OS9ZTGZvejFKbklRM2FvVTdxaVFXU0RSaElmVk1EOFlES1lLTFNCOGFEVHZY?=
 =?utf-8?B?Wkk4aEhsaWkrV1dMZitMWkRSN1Z5UGgzOFZ2Nm1tUTZrM1hjSmZYNWhDRW03?=
 =?utf-8?B?dW51eE1ieWVacHMvbnExQ3p5L3NkeDludFVyejNLL21sbjVCZitlWVYyZDNv?=
 =?utf-8?B?VklOeUVlTnZVTC9GQk9ZTE96cjZQRjAwS3JndmRxaExWaWxqL1hkNEtINnFt?=
 =?utf-8?B?a1FhazJXTmxFYkhQVGhFTGJsUUNrTjJ3dEFkZXpqQ1RhRTBMNUZKTVAyYmZu?=
 =?utf-8?B?Y2l3R2dhcWxHWURmVVFsK2dZa2RIaHgwVEFzbUdBUnJpbVRNbmRNMnZ3K3Jp?=
 =?utf-8?B?ZjdEczduS3dUVjJPQVpVNjJvMjZmT3hoMkJvVExGbDRBRjRreFBKOWRJTGN0?=
 =?utf-8?B?YUR1elhJTE1mTitIZHRKRHUreEl6VDliQzNmMWNDWnhianlsMVlkNmt3dlBy?=
 =?utf-8?B?RWhrT3hMQmdQTTZYajE5VlhDOHVVMHlBNWc2TmNTNVFib1BhSXRIZldqWThB?=
 =?utf-8?B?aEV6SXI4Y2NNWnN5QWNBL1FXeDNoQUdoeHpzZnN0N2o1RmtMdldZbHRNMnRu?=
 =?utf-8?B?QjBUTDgwcnBSVGUyVXAxMHA3Lzl1c0Z4Zlo4NUdMSnJudmxMZ3k1OW51SGk2?=
 =?utf-8?Q?901fk2qrfUQfq5Xk+7OJ6H40LzmUxL9EG4/2BmB?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: dektech.com.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR05MB4315.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b125ea1-1be1-444a-a37d-08d92bf06de5
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 09:16:28.4867 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1957ea50-0dd8-4360-8db0-c9530df996b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YP8cpNQXmqYM5uMhygrFSycVJ+3CMSs9Yy8EJbB8xuR0HZVl/y3oByRHtPFCnnDynCWQtvWkd9LNe++328Bh97qiMbXHRdJuZhB54ZHEd/k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2598
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: zte.com.cn]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.7.91 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.7.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lrH24-0002Xp-Uq
Subject: Re: [tipc-discussion] [PATCH v2 net-next 0/2] net: tipc: fix FB_MTU
 eat two pages and do some code cleanup
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
Cc: Xin Long <lxin@redhat.com>, "tipc-discussion@lists.sourceforge.net"
 <tipc-discussion@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

UmVtb3ZlLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogVHVuZyBRdWFuZyBO
Z3V5ZW4gDQpTZW50OiBUaHVyc2RheSwgSnVuZSAxMCwgMjAyMSA0OjE2IFBNDQpUbzogSm9uIE1h
bG95IDxqbWFsb3lAcmVkaGF0LmNvbT47IE1lbmdsb25nIERvbmcgPG1lbmdsb25nOC5kb25nQGdt
YWlsLmNvbT4NCkNjOiB5aW5nLnh1ZUB3aW5kcml2ZXIuY29tOyB0aXBjLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0OyBYaW4gTG9uZyA8bHhpbkByZWRoYXQuY29tPjsgdGlwYy1kZWsg
PHRpcGMtZGVrQGRla3RlY2guY29tLmF1Pg0KU3ViamVjdDogUkU6IFtQQVRDSCB2MiBuZXQtbmV4
dCAwLzJdIG5ldDogdGlwYzogZml4IEZCX01UVSBlYXQgdHdvIHBhZ2VzIGFuZCBkbyBzb21lIGNv
ZGUgY2xlYW51cA0KDQpSZW1vdmUgdGlwYy1kZWsgbWFpbCBsaXN0IHRvIGF2b2lkIGJvdGhlcmlu
ZyBvdGhlciBwZW9wbGUuDQoNCkJlc3QgcmVnYXJkcywNClR1bmcgTmd1eWVuDQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBKb24gTWFsb3kgPGptYWxveUByZWRoYXQuY29tPiAN
ClNlbnQ6IFRodXJzZGF5LCBKdW5lIDEwLCAyMDIxIDQ6MTIgUE0NClRvOiBNZW5nbG9uZyBEb25n
IDxtZW5nbG9uZzguZG9uZ0BnbWFpbC5jb20+DQpDYzogeWluZy54dWVAd2luZHJpdmVyLmNvbTsg
dGlwYy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgWGluIExvbmcgPGx4aW5AcmVk
aGF0LmNvbT47IHRpcGMtZGVrIDx0aXBjLWRla0BkZWt0ZWNoLmNvbS5hdT4NClN1YmplY3Q6IFJl
OiBbUEFUQ0ggdjIgbmV0LW5leHQgMC8yXSBuZXQ6IHRpcGM6IGZpeCBGQl9NVFUgZWF0IHR3byBw
YWdlcyBhbmQgZG8gc29tZSBjb2RlIGNsZWFudXANCg0KDQpPbiA2LzkvMjEgODo1NiBBTSwgTWVu
Z2xvbmcgRG9uZyB3cm90ZToNCj4gT24gV2VkLCBKdW4gOSwgMjAyMSBhdCA2OjQ3IFBNIEpvbiBN
YWxveSA8am1hbG95QHJlZGhhdC5jb20+IHdyb3RlOg0KPj4NCj4+DQo+PiBPbiA2LzkvMjEgNjoz
MiBBTSwgbWVuZ2xvbmc4LmRvbmdAZ21haWwuY29tIHdyb3RlOg0KPj4+IEZyb206IE1lbmdsb25n
IERvbmcgPGRvbmcubWVuZ2xvbmdAenRlLmNvbS5jbj4NCj4+Pg0KPj4+IEluIHRoZSBmaXJzdCBw
YXRjaCwgRkJfTVRVIGlzIHJlZGVmaW5lZCB0byBtYWtlIHN1cmUgZGF0YSBzaXplIHdpbGwgbm90
DQo+Pj4gZXhjZWVkIFBBR0VfU0laRS4gQmVzaWRlcywgSSByZW1vdmVkIHRoZSBhbGlnbm1lbnQg
Zm9yIGJ1Zl9zaXplIGluDQo+Pj4gdGlwY19idWZfYWNxdWlyZSwgYmVjYXVzZSBza2JfYWxsb2Nf
ZmNsb25lIHdpbGwgZG8gdGhlIGFsaWdubWVudCBqb2IuDQo+Pj4NCj4+PiBJbiB0aGUgc2Vjb25k
IHBhdGNoLCBJIHJlbW92ZWQgYWxpZ24oKSBpbiBtc2cuYyBhbmQgcmVwbGFjZSBpdCB3aXRoDQo+
Pj4gQUxJR04oKS4NCj4+Pg0KPj4+DQo+Pj4NCj4+Pg0KPj4+IE1lbmdsb25nIERvbmcgKDIpOg0K
Pj4+ICAgICBuZXQ6IHRpcGM6IGZpeCBGQl9NVFUgZWF0IHR3byBwYWdlcw0KPj4+ICAgICBuZXQ6
IHRpcGM6IHJlcGxhY2UgYWxpZ24oKSB3aXRoIEFMSUdOIGluIG1zZy5jDQo+Pj4NCj4+PiAgICBu
ZXQvdGlwYy9iY2FzdC5jIHwgIDIgKy0NCj4+PiAgICBuZXQvdGlwYy9tc2cuYyAgIHwgMzEgKysr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQ0KPj4+ICAgIG5ldC90aXBjL21zZy5oICAgfCAg
MyArKy0NCj4+PiAgICAzIGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDE5IGRlbGV0
aW9ucygtKQ0KPj4+DQo+PiBOQUNLLg0KPj4gWW91IG11c3QgaGF2ZSBtaXNzZWQgbXkgbGFzdCBt
YWlsIGJlZm9yZSB5b3Ugc2VudCBvdXQgdGhpcy4gIFdlIGhhdmUgdG8NCj4+IGRlZmluZSBhIHNl
cGFyYXRlIG1hY3JvIGZvciBiY2FzdC5jLCBzaW5jZSB0aG9zZSBidWZmZXJzIHNvbWV0aW1lcyB3
aWxsDQo+PiBuZWVkIGVuY3J5cHRpb24uDQo+PiBTb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbi4NCj4g
Tm8sIG5vLCBJIGRpZG4ndCBtaXNzIHlvdXIgbWFpbC4gSSB0aGluayBpdCBjYW4gbWFrZSB1cyBj
bGVhciBhYm91dCB3aGF0IGFuZCBob3cNCj4gdG8gZG8gYnkgc2VuZGluZyB0aGUgVjIgcGF0Y2hl
cy4NCj4NCj4gU28gd2UgY2FuIGRlZmluZSB0d28gdmVyc2lvbnMgJ0ZCX01UVScgZm9yIGJjYXN0
LmMgYW5kIG1zZy5jLCBzdWNoIGFzIENSWVBUT19NVFUNCj4gYW5kIE5PTl9DUllQVE9fTVRVLiBB
bmQgd2l0aGluIHRpcGNfYnVmX2FjcXVpcmUoKSwgd2UgZGVjaWRlIHdoaWNoIHZlcnNpb24NCj4g
QlVGX0hFQURST09NIHRvIHVzZSBieSB0aGUgZGF0YSBzaXplPyBTdWNoIGFzOg0KPg0KPiBpbnQg
YnVmX3NpemU7DQo+IGlmIChJU19FTkFCTEVEKENPTkZJR19USVBDX0NSWVBUTykgJiYgc2l6ZSA9
PSBOT05fQ1JZUFRPX01UVSkgew0KPiAgICAgIGJ1Zl9zaXplID0gc2l6ZSArIEJVRl9IRUFEUk9P
TV9ub24tY3J5cHRvICsgQlVGX1RBSUxST09NX25vbi1jcnlwdG87DQo+IH0gZWxzZSB7DQo+ICAg
ICAgYnVmX3NpemUgPSBzaXplICsgQlVGX0hFQURST09NX2NyeXB0byArIEJVRl9UQUlMUk9PTV9j
cnlwdG87DQo+IH0NCj4NCj4gSXMgdGhpcyBmZWVsaW5nPw0KPiAoSXQncyBhIGxpdHRsZSB3ZWly
ZCB0byBjaGVjayB3aGV0aGVyIHRoZSBkYXRhIHNob3VsZCBiZSBjcnlwdG8gYnkgZGF0YSBzaXpl
KS4NCj4NCj4gVGhhbmtzIQ0KPiBNZW5nbG9uZyBEb25nDQooUmVtb3ZlZCBuZXRkZXYsIERhdmlk
IE1pbGxlciBldGMgZnJvbSB0aHJlYWQpDQoNCkkgdGhpbmsgb3VyIG1haW4gbWlzdGFrZSBpcyB0
aGF0IHdlIGFyZSB0cnlpbmcgdG8gImNvbXBlbnNhdGUiIGZvciBhIA0KYmVoYXZpb3IgaW4gdGlw
Y19idWZfYWNxdWlyZSgpIHRoYXQgZG9lbnMndCBmaXQgb3VyIHB1cnBvc2VzLg0KDQpXaGF0IGlm
IHdlIGRvIHRoZSBmb2xsb3dpbmc6DQoxKSBXZSBkZWZpbmUgQlVGX0hFQURST09NIGFuZCBCVUZf
VEFJTFJPT00gYXMgd2UgZG8gbm93LCBwbHVzIGEgRkJfTVRVIA0KYXMgeW91IHN1Z2dlc3QsIGFs
bCBpbnNpZGUgbXNnLmMuDQoyKSBXZSBjcmVhdGUgYSBuZXcgaW5saW5lIGZ1bmN0aW9uIHRpcGNf
YWxsb2Nfc2tiKGludCBoZWFkcm9vbSwgaW50IA0KdGFpbHJvb20sIGludCBzaXplKSBpbiBtc2cu
Yw0KIMKgwqDCoMKgIFRoaXMgZnVuY3Rpb24gZG9lcyB0aGUgam9iIHRoYXQgdGlwY19idWZfYWNx
aXJlKCkgZG9lcyBub3cuDQozKSBXZSBsZXQgdGlwY19idWZfYWNxdWlyZSgpIGNhbGwgdGhpcyBm
dW5jdGlvbiBhcyANCnRpcGNfYWxsb2Nfc2tiKEJVRl9IRUFEUk9PTSwgQlVGX1RBSUxST09NLCBz
aXplKTsNCiDCoMKgwqAgQWx0ZXJuYXRpdmVseSwgd2Ugc2tpcCB0aGUgQlVGX0hFQURST09NL0JV
Rl9UQUlMUk9PTSBtYWNyb3MgDQphbHRvZ2V0aGVyIGFuZG1ha2UgdGhlIGNvZGUgaW4gdGlwY19i
dWZfYWNxdWlyZSgpIGNvbmRpdGlvbmFsIGFzIHlvdSANCmRpZCwgYnV0IHdpdGhvdXQgdGVzdGlu
ZyBmb3Igc2l6ZS4gQWN0dWFsbHksIEkgdGhpbmsgSSBsaWtlIHRoaXMgYmV0dGVyLg0KNCkgV2Ug
bGV0IHRoZSBmYWxsYmFjayBmdW5jdGlvbiBpbiBtc2cuYyBjYWxsIGl0IGFzIA0KdGlwY19hbGxv
Y19za2IoTExfTUFYX0hFQURFUiArIDQ4LCAwLCBPTkVQQUdFX1NLQik7DQo1KSBXZSBsZXQgdGhl
IHVzZXIgaW4gYmNhc3QuYyBnZXQgYWNjZXMgdG8gdGhlIGNhbGN1bGF0ZWQgdmFsdWUgb2YgDQpG
Ql9NVFUgYXMgYSBmdW5jdGlvbiBvciBnbG9iYWwgdmFsdWUsIGxpa2UgeW91IGRpZCBpbiB2Mi4N
Cg0KSSBzdWdnZXN0IHlvdSBzZW5kIHYzIHRvIHRpcGMtZGlzY3Vzc2lvbiAoaWYgeW91IGFyZSBh
IG1lbWJlcikgYW5kIHRoZSANCnJlY2lwaWVudHMgb2YgdGhpcyBtYWlsIGZpcnN0LCBzbyB3ZSBk
b24ndCBzcGFtIHRoZSBuZXRkZXYgbGlzdCB3aXRoIA0KaW50ZXJtZWRpYXRlIHZlcnNpb25zIG9m
IHRoaXMgc2VyaWVzLg0KDQovLy9qb24NCg0KDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KdGlwYy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdAp0aXBjLWRp
c2N1c3Npb25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2Uu
bmV0L2xpc3RzL2xpc3RpbmZvL3RpcGMtZGlzY3Vzc2lvbgo=
