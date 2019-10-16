Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5AFD9024
	for <lists+tipc-discussion@lfdr.de>; Wed, 16 Oct 2019 13:58:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iKhwR-0007Oy-EK; Wed, 16 Oct 2019 11:58:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1iKhwQ-0007Oo-Eo
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 11:58:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fLg6/f+7XiJIgOvY800vlHMGL4TPgjM+ocZoW0ur8bM=; b=l4OUtDUnVWL0nct4ulmzRqBJ1x
 54toIns97YUEHbIBbmMnWohaWXKLYEgHysu/k0plualaQHRiosmgt9erJzK1PjVPfsm74a+zcnEID
 BwpQo8/92p3ykpEcjM/3lYVv2rd9bu3/2MhxcOdosW8fktOTO2ASHQRN43oqsbVt50R0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fLg6/f+7XiJIgOvY800vlHMGL4TPgjM+ocZoW0ur8bM=; b=haUvHS6XadN1zkT7NJSG1WQkGh
 KkUddQYWGtoXvK/pSr5ZnHo8q6UiIrF9ZhdLNedOYS8WKEtUeaSxW1DkqVOciwe3bZb8otjjU4p0Y
 EjJrxsC/bH2uoDJKp4dnmPXWE4W2cFXkqaU+3IO9h1nVgHPKZTX6MMU8kpl9gkATAQFQ=;
Received: from mail5.windriver.com ([192.103.53.11] helo=mail5.wrs.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iKhwO-00BNLe-GO
 for tipc-discussion@lists.sourceforge.net; Wed, 16 Oct 2019 11:58:10 +0000
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
 [147.11.189.40])
 by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x9GBw1t1029539
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 16 Oct 2019 04:58:01 -0700
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0; Wed, 16 Oct
 2019 04:57:59 -0700
To: Mohamed Hamed El-Gamal <mhmd.hamed@gmail.com>,
 <tipc-discussion@lists.sourceforge.net>
References: <CAFUf6vf4UM4CemQUr2g1p6O0ybeNB+exdzOt=_eCG8a+JAUW9g@mail.gmail.com>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <6d4ca85f-69bf-449c-e713-f2ad20ade31b@windriver.com>
Date: Wed, 16 Oct 2019 19:45:11 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFUf6vf4UM4CemQUr2g1p6O0ybeNB+exdzOt=_eCG8a+JAUW9g@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1iKhwO-00BNLe-GO
Subject: Re: [tipc-discussion] TIPC Contianer
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


On 10/16/19 4:41 AM, Mohamed Hamed El-Gamal wrote:
> Hello,
> 
> I would like to ask you regarding the optimum way to run TIPC over
> containerized workload
> Will it be using MACVLAN interfaces for docker and K8s ?
> 

Interfaces attached to different containers are connected to a virtual
bridge on host, and each of contains serves as TIPC node, which
definitely works.

I think macvlan interface used as TIPC bearer for docker or k8s should
be the most efficient way. But particularly when creating macvlan
interface, it should use "bridge" mode, otherwise, TIPC links between
different containers cannot be established.

But I don't do any experiment to verify whether it works to configure
maclvan interface as TIPC bearer.

If you would like to try, please tell your test result.

> Note: We are using also Mulit-netowkring
> 
> 
> It would be great if there is any supportive documentations
> 
> 
> Thanks a lot
> Best Regards
> 
> 
> 
> 
> <https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail>
> Garanti
> sans virus. www.avast.com
> <https://www.avast.com/sig-email?utm_medium=email&utm_source=link&utm_campaign=sig-email&utm_content=webmail>
> <#DAB4FAD8-2DD7-40BB-A1B8-4E2AA1F9FDF2>
> 
> _______________________________________________
> tipc-discussion mailing list
> tipc-discussion@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/tipc-discussion
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
